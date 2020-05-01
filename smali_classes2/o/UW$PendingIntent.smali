.class public final Lo/UW$PendingIntent;
.super Lo/UW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingIntent"
.end annotation


# instance fields
.field private final d:Lcom/netflix/model/leafs/originals/interactive/ImpressionData;


# direct methods
.method public constructor <init>(Lcom/netflix/model/leafs/originals/interactive/ImpressionData;)V
    .locals 1

    const/4 v0, 0x0

    .line 235
    invoke-direct {p0, v0}, Lo/UW;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/UW$PendingIntent;->d:Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    return-void
.end method


# virtual methods
.method public final e()Lcom/netflix/model/leafs/originals/interactive/ImpressionData;
    .locals 1

    .line 234
    iget-object v0, p0, Lo/UW$PendingIntent;->d:Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    return-object v0
.end method
