10.times do |i|
  Tidbit.seed do |tidbit|
    tidbit.id = i
    tidbit.title = "title#{i}"
    tidbit.content = "content#{i}"
  end
end
