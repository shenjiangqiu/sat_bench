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
END	{
    print a " " ;
    print b " " ;
    print c " " ;
    print d " " ;
    print e " " ;
    print f " " ;
    print g " " ;
    print h " " ;
}