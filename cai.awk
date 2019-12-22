BEGIN	{

}
/propagate/{
    a=$3;
}
/conflicts:/{
    b=$3;
}
/propagations/{
    c=$3;
}
/total real time since/{
    d=$7;
}

END	{
    print a " " ;
    print b " " ;
    print c " " ;
    print d " " ;
}