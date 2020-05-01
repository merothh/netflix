.class public Lo/Ad$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskDescription"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

.field public final c:I

.field public final d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field public final e:Ljava/lang/String;

.field public final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;ILcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lo/Ad$TaskDescription;->a:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lo/Ad$TaskDescription;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    .line 37
    iput p3, p0, Lo/Ad$TaskDescription;->c:I

    .line 38
    iput-object p4, p0, Lo/Ad$TaskDescription;->d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 39
    iput-object p5, p0, Lo/Ad$TaskDescription;->e:Ljava/lang/String;

    .line 40
    iput-object p6, p0, Lo/Ad$TaskDescription;->j:Ljava/lang/String;

    return-void
.end method
