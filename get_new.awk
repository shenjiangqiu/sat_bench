BEGIN	{

}
/clause_allocate_size/{
    a=$2;
}
/total_Watchers/{
    b=$2;
}
/total_indexs/{
    c=$2;
}
/time_find_conflict/{
    d=$2;
}
/total_find_conflict_length/{
    e=$2;
}
/total_find_conflict_allsize/{
    f=$2;
}
/total_propagation_time/{
    g=$2;
}
/total_work_time/{
    h=$2;
}
/times_only_access_watches/{
    i1=$2;
}
/total_watch_access/{
    i2=$2;
}
/total_clause_access_times/{
    i3=$2;
}
/total_clause_access_size/{
    i4=$2;
}
/total_change_other_watch/{
    i5=$2;
}
/total_push_new_implication/{
    i6=$2;
}
/total_no_clause_access/{
    i7=$2;
}
/total_no_implication_added/{
    i8=$2;
}
/total_no_change_other_watch/{
    i9=$2;
}

END	{
    print a " " ;
    print b " " ;
    print c " " ;
    print d " " ;
    print e " " ;
    print f " " ;
    print g " " ;
    print h " " ;
    print i1 " " ;
    print i2 " " ;
    print i3 " " ;
    print i4 " " ;
    print i5 " " ;
    print i6 " " ;
    print i7 " " ;
    print i8 " " ;
    print i9 " " ;
}