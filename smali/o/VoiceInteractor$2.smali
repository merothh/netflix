.class Lo/VoiceInteractor$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VoiceInteractor;->v()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/VoiceInteractor;


# direct methods
.method constructor <init>(Lo/VoiceInteractor;)V
    .locals 0

    .line 638
    iput-object p1, p0, Lo/VoiceInteractor$2;->e:Lo/VoiceInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Lo/NotActiveException;)Lo/NotActiveException;
    .locals 4

    .line 642
    invoke-virtual {p2}, Lo/NotActiveException;->c()I

    move-result v0

    .line 643
    iget-object v1, p0, Lo/VoiceInteractor$2;->e:Lo/VoiceInteractor;

    invoke-virtual {v1, v0}, Lo/VoiceInteractor;->g(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 647
    invoke-virtual {p2}, Lo/NotActiveException;->b()I

    move-result v0

    .line 649
    invoke-virtual {p2}, Lo/NotActiveException;->e()I

    move-result v2

    .line 650
    invoke-virtual {p2}, Lo/NotActiveException;->d()I

    move-result v3

    .line 646
    invoke-virtual {p2, v0, v1, v2, v3}, Lo/NotActiveException;->c(IIII)Lo/NotActiveException;

    move-result-object p2

    .line 654
    :cond_0
    invoke-static {p1, p2}, Lo/FilterWriter;->a(Landroid/view/View;Lo/NotActiveException;)Lo/NotActiveException;

    move-result-object p1

    return-object p1
.end method
