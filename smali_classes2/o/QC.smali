.class public final synthetic Lo/QC;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic c:[I

.field public static final synthetic e:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 9

    invoke-static {}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->values()[Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/QC;->c:[I

    sget-object v0, Lo/QC;->c:[I

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->a:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lo/QC;->c:[I

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->d:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lo/QC;->c:[I

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v0, Lo/QC;->c:[I

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->f:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    sget-object v0, Lo/QC;->c:[I

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->g:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->ordinal()I

    move-result v1

    const/4 v6, 0x5

    aput v6, v0, v1

    sget-object v0, Lo/QC;->c:[I

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->c:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->ordinal()I

    move-result v1

    const/4 v7, 0x6

    aput v7, v0, v1

    sget-object v0, Lo/QC;->c:[I

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->h:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->ordinal()I

    move-result v1

    const/4 v8, 0x7

    aput v8, v0, v1

    invoke-static {}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->values()[Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/QC;->e:[I

    sget-object v0, Lo/QC;->e:[I

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->a:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lo/QC;->e:[I

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lo/QC;->e:[I

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lo/QC;->e:[I

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->d:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sget-object v0, Lo/QC;->e:[I

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->j:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->ordinal()I

    move-result v1

    aput v6, v0, v1

    sget-object v0, Lo/QC;->e:[I

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->c:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->ordinal()I

    move-result v1

    aput v7, v0, v1

    sget-object v0, Lo/QC;->e:[I

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->f:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->ordinal()I

    move-result v1

    aput v8, v0, v1

    sget-object v0, Lo/QC;->e:[I

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->g:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    return-void
.end method
