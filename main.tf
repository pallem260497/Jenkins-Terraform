resource "aws_instance" "tstinstance" {

    ami = "ami-07e19c485c7cf2266"
    instance_type = "t2.micro"
    associate_public_ip_address = true
    key_name = "DonotDeleteKeyPair"

    tags {

      Name = “testinstance”

    }

}
