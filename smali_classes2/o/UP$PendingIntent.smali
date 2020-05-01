.class public final Lo/UP$PendingIntent;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingIntent"
.end annotation


# instance fields
.field private final d:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;


# direct methods
.method public constructor <init>(Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V
    .locals 1

    const/4 v0, 0x0

    .line 180
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/UP$PendingIntent;->d:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    return-void
.end method


# virtual methods
.method public final c()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;
    .locals 1

    .line 180
    iget-object v0, p0, Lo/UP$PendingIntent;->d:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    return-object v0
.end method
