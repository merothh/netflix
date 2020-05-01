.class public Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;
.super Lcom/netflix/mediaclient/android/app/NetflixStatus;
.source "FalkorAgentStatus.java"


# instance fields
.field private final wasAllDataLocalToCache:Z


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/StatusCode;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->wasAllDataLocalToCache:Z

    return-void
.end method


# virtual methods
.method public wasAllDataLocalToCache()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->wasAllDataLocalToCache:Z

    return v0
.end method
