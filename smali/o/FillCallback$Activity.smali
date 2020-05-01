.class final Lo/FillCallback$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FillCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Activity"
.end annotation


# instance fields
.field private final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lo/FillCallback$Activity;->b:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/FillCallback$Activity;->a:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 104
    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lo/FillCallback$Activity;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x2

    const-string v3, "LogBillboardActivityTask"

    const/4 v4, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 109
    iget-object v5, p0, Lo/FillCallback$Activity;->b:Ljava/lang/String;

    aput-object v5, v0, v1

    aput-object p1, v0, v4

    aput-object p2, v0, v2

    const-string v1, "different lolomoId old: %s, new %s, videoId: %s"

    invoke-static {v3, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 110
    iput-object p1, p0, Lo/FillCallback$Activity;->b:Ljava/lang/String;

    .line 111
    iget-object p1, p0, Lo/FillCallback$Activity;->a:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 112
    iget-object p1, p0, Lo/FillCallback$Activity;->a:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 114
    :cond_1
    iget-object p1, p0, Lo/FillCallback$Activity;->a:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return v4

    .line 119
    :cond_2
    iget-object p1, p0, Lo/FillCallback$Activity;->a:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    .line 123
    :cond_3
    iget-object p1, p0, Lo/FillCallback$Activity;->a:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-array p1, v2, [Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lo/FillCallback$Activity;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    aput-object p2, p1, v4

    const-string p2, "(size: %d) - Added videoId: %s"

    invoke-static {v3, p2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v4

    :cond_4
    :goto_0
    return v1
.end method
