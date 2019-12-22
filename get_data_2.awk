BEGIN	{

}
/clause_allocate_size/{
    print $2;
}
/Number of clauses:/{
    b=$6;
}
/Number of variables:/{
    c=$6;
}

END	{

    print b " " ;
    print c " " ;
   
}