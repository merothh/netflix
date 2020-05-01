.class public final Lo/Qu$Activity;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Qu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "DownloadedContentModel"

    .line 31
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lo/Qu$Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lo/Tf;Lo/LongStream;JZLjava/util/List;)Lo/Qu;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Tf;",
            "Lo/LongStream<",
            "Lo/Qs;",
            "Lo/Qu$StateListAnimator;",
            ">;JZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lo/Qu;"
        }
    .end annotation

    const-string v0, "video"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "episodeIds"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Lo/Tf;->ba()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lo/Tf;->at()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lo/Tf;->aw()Ljava/lang/String;

    move-result-object v0

    .line 42
    :goto_2
    invoke-virtual {p1}, Lo/Tf;->ba()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lo/Tf;->av()Ljava/lang/String;

    move-result-object v1

    .line 43
    :goto_3
    new-instance v2, Lo/Qs;

    invoke-direct {v2}, Lo/Qs;-><init>()V

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "main_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lo/Tf;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lo/Qs;->e(Ljava/lang/CharSequence;)Lo/Qs;

    .line 45
    invoke-virtual {v2, p1}, Lo/Qs;->d(Lo/Tf;)Lo/Qs;

    .line 46
    invoke-virtual {v2, p6}, Lo/Qs;->c(Ljava/util/List;)Lo/Qs;

    .line 47
    invoke-virtual {v2, p5}, Lo/Qs;->c(Z)Lo/Qs;

    .line 48
    invoke-virtual {v2, p3, p4}, Lo/Qs;->e(J)Lo/Qs;

    .line 49
    invoke-virtual {v2, v0}, Lo/Qs;->d(Ljava/lang/String;)Lo/Qs;

    .line 50
    invoke-virtual {v2, v1}, Lo/Qs;->a(Ljava/lang/String;)Lo/Qs;

    .line 51
    new-instance p1, Lo/ExemptionMechanismException;

    invoke-direct {p1, p2}, Lo/ExemptionMechanismException;-><init>(Lo/LongStream;)V

    check-cast p1, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, p1}, Lo/Qs;->b(Landroid/view/View$OnClickListener;)Lo/Qs;

    .line 43
    check-cast v2, Lo/Qu;

    return-object v2
.end method
