#include "http_tcpServer_win.h"
#include <iostream>
int main()
{
    using namespace http;

    std::string ip_adrr;
    int port;
    std::cout<<"Enter the ip address: ";
    std::cin>>ip_adrr;
    std::cout<<"Enter the port (eg. 8080): ";
    std::cin>>port;

    TcpServer server = TcpServer(ip_adrr, port);
    server.startListen();
    return 0;
}
