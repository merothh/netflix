.class public final Lo/FactoryTest$TaskDescription;
.super Lo/UpdateEngineCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FactoryTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TaskDescription"
.end annotation


# static fields
.field static final synthetic a:[Lo/amT;


# instance fields
.field private final b:Lo/ams;

.field private final c:Lo/ams;

.field final synthetic d:Lo/FactoryTest;

.field private final e:Lo/ams;

.field private final f:Landroid/view/View;

.field private final i:Lo/ams;

.field private final j:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/FactoryTest$TaskDescription;

    const/4 v1, 0x5

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "title"

    const-string v5, "getTitle()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "description"

    const-string v5, "getDescription()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "stop"

    const-string v5, "getStop()Lcom/netflix/mediaclient/android/widget/NetflixImageButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "episodes"

    const-string v5, "getEpisodes()Lcom/netflix/mediaclient/android/widget/NetflixImageButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "next"

    const-string v4, "getNext()Lcom/netflix/mediaclient/android/widget/NetflixTextButton;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lo/FactoryTest$TaskDescription;->a:[Lo/amT;

    return-void
.end method

.method public constructor <init>(Lo/FactoryTest;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "screen"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lo/FactoryTest$TaskDescription;->d:Lo/FactoryTest;

    invoke-direct {p0, p2}, Lo/UpdateEngineCallback;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lo/FactoryTest$TaskDescription;->f:Landroid/view/View;

    .line 36
    sget p1, Lo/CancellationSignal$Activity;->v:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Lo/UpdateEngineCallback;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/FactoryTest$TaskDescription;->c:Lo/ams;

    .line 37
    sget p1, Lo/CancellationSignal$Activity;->s:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Lo/UpdateEngineCallback;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/FactoryTest$TaskDescription;->b:Lo/ams;

    .line 38
    sget p1, Lo/CancellationSignal$Activity;->y:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Lo/UpdateEngineCallback;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/FactoryTest$TaskDescription;->e:Lo/ams;

    .line 39
    sget p1, Lo/CancellationSignal$Activity;->q:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Lo/UpdateEngineCallback;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/FactoryTest$TaskDescription;->j:Lo/ams;

    .line 40
    sget p1, Lo/CancellationSignal$Activity;->u:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Lo/UpdateEngineCallback;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/FactoryTest$TaskDescription;->i:Lo/ams;

    return-void
.end method


# virtual methods
.method public final a()Lo/GridLayout;
    .locals 3

    iget-object v0, p0, Lo/FactoryTest$TaskDescription;->j:Lo/ams;

    sget-object v1, Lo/FactoryTest$TaskDescription;->a:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridLayout;

    return-object v0
.end method

.method public final b()Lo/HorizontalScrollView;
    .locals 3

    iget-object v0, p0, Lo/FactoryTest$TaskDescription;->i:Lo/ams;

    sget-object v1, Lo/FactoryTest$TaskDescription;->a:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/HorizontalScrollView;

    return-object v0
.end method

.method public final c()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/FactoryTest$TaskDescription;->b:Lo/ams;

    sget-object v1, Lo/FactoryTest$TaskDescription;->a:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method public final d()Lo/GridLayout;
    .locals 3

    iget-object v0, p0, Lo/FactoryTest$TaskDescription;->e:Lo/ams;

    sget-object v1, Lo/FactoryTest$TaskDescription;->a:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridLayout;

    return-object v0
.end method

.method public final e()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/FactoryTest$TaskDescription;->c:Lo/ams;

    sget-object v1, Lo/FactoryTest$TaskDescription;->a:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method public final g()Landroid/view/View;
    .locals 1

    .line 35
    iget-object v0, p0, Lo/FactoryTest$TaskDescription;->f:Landroid/view/View;

    return-object v0
.end method
