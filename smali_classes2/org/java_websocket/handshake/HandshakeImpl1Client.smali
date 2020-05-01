.class public Lorg/java_websocket/handshake/HandshakeImpl1Client;
.super Lorg/java_websocket/handshake/HandshakedataImpl1;
.source "HandshakeImpl1Client.java"

# interfaces
.implements Lorg/java_websocket/handshake/ClientHandshakeBuilder;


# instance fields
.field private resourcedescriptor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/java_websocket/handshake/HandshakedataImpl1;-><init>()V

    return-void
.end method


# virtual methods
.method public getResourceDescriptor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/java_websocket/handshake/HandshakeImpl1Client;->resourcedescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public setResourceDescriptor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/java_websocket/handshake/HandshakeImpl1Client;->resourcedescriptor:Ljava/lang/String;

    return-void
.end method
