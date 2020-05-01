.class Lcom/netflix/msl/msg/MslControl$Fragment;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/msl/msg/MslControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Fragment"
.end annotation


# instance fields
.field private final b:Lo/ahS;

.field private final d:Lcom/netflix/msl/util/MslContext;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lo/ahS;)V
    .locals 0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$Fragment;->d:Lcom/netflix/msl/util/MslContext;

    .line 235
    iput-object p2, p0, Lcom/netflix/msl/msg/MslControl$Fragment;->b:Lo/ahS;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 252
    :cond_0
    instance-of v1, p1, Lcom/netflix/msl/msg/MslControl$Fragment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 253
    :cond_1
    check-cast p1, Lcom/netflix/msl/msg/MslControl$Fragment;

    .line 254
    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$Fragment;->d:Lcom/netflix/msl/util/MslContext;

    iget-object v3, p1, Lcom/netflix/msl/msg/MslControl$Fragment;->d:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$Fragment;->b:Lo/ahS;

    iget-object p1, p1, Lcom/netflix/msl/msg/MslControl$Fragment;->b:Lo/ahS;

    invoke-virtual {v1, p1}, Lo/ahS;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$Fragment;->d:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MslControl$Fragment;->b:Lo/ahS;

    invoke-virtual {v1}, Lo/ahS;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
