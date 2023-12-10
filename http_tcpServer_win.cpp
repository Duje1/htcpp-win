#include "http_tcpServer_win.h"
#include <iostream>

namespace http
{
    TcpServer::TcpServer()
    {
        std::cout << "TcpServer constructor called";
    }

    TcpServer::~TcpServer()
    {
        std::cout << "TcpServer destructor called";
    }
} // namespace http
