.class public Lo/FontRequest$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FontRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Activity"
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lo/FontRequest$Activity;->b:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lo/FontRequest$Activity;->d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 73
    iput-object p3, p0, Lo/FontRequest$Activity;->c:Ljava/lang/String;

    return-void
.end method
