.class public Lo/mu$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/mu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Activity"
.end annotation


# instance fields
.field private c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

.field private d:Lo/mk;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;Lo/mk;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lo/mu$Activity;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    .line 35
    iput-object p2, p0, Lo/mu$Activity;->d:Lo/mk;

    return-void
.end method


# virtual methods
.method public b()Lo/mk;
    .locals 1

    .line 39
    iget-object v0, p0, Lo/mu$Activity;->d:Lo/mk;

    return-object v0
.end method

.method public c()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;
    .locals 1

    .line 43
    iget-object v0, p0, Lo/mu$Activity;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    return-object v0
.end method
