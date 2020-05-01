.class public final Lo/DC$BroadcastReceiver;
.super Lo/DC;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BroadcastReceiver"
.end annotation


# instance fields
.field private final c:Lcom/netflix/model/leafs/originals/ContentWarning;


# direct methods
.method public constructor <init>(Lcom/netflix/model/leafs/originals/ContentWarning;)V
    .locals 1

    const-string v0, "contentWarning"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, v0}, Lo/DC;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/DC$BroadcastReceiver;->c:Lcom/netflix/model/leafs/originals/ContentWarning;

    return-void
.end method


# virtual methods
.method public final d()Lcom/netflix/model/leafs/originals/ContentWarning;
    .locals 1

    .line 138
    iget-object v0, p0, Lo/DC$BroadcastReceiver;->c:Lcom/netflix/model/leafs/originals/ContentWarning;

    return-object v0
.end method
