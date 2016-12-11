\p 5001
\l ../k4unit.q
KUltf `$":test_2_06.csv"
show KUT
KUrt[]
show KUTR
show "tests failed: ", (string count select from KUTR where not ok), "/", string count KUTR;

