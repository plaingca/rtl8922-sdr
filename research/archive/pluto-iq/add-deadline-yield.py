from pathlib import Path
p=Path('tmp/pluto-iq/debug-serial-faults.c');s=p.read_text()
s=s.replace('    cond_resched();\n    wiphy_lock(rtwdev->hw->wiphy);', '''    /* A deadline task can starve CFS ksoftirqd even at cond_resched().
     * No IDDMA copy is active here; leave a bounded RX-service window. */
    if(current->policy==SCHED_DEADLINE) usleep_range(25,50);
    else cond_resched();
    wiphy_lock(rtwdev->hw->wiphy);''')
s=s.replace('end_status=%x\\n','end_status=%x host_packets=%llu host_drops=%llu\\n')
s=s.replace('failure_stage,state,end_la,end_wp,end_dma,end_status);','failure_stage,state,end_la,end_wp,end_dma,end_status,READ_ONCE(iq_scope_packets),READ_ONCE(iq_scope_dropped));')
Path('tmp/pluto-iq/debug-deadline-yield.c').write_bytes(s.encode())
