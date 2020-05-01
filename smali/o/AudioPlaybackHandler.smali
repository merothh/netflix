.class public final Lo/AudioPlaybackHandler;
.super Lo/RecognitionService;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AudioPlaybackHandler$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/RecognitionService<",
        "Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:[Lo/amT;

.field public static final c:Lo/AudioPlaybackHandler$Application;

.field private static final h:I

.field private static final j:I


# instance fields
.field private final b:Lo/InputBinding;

.field private final d:Lo/ams;

.field private final e:Lo/ams;

.field private final i:Lo/UnicodeScript;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/AudioPlaybackHandler;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "kidsCheckBox"

    const-string v5, "getKidsCheckBox()Landroid/widget/CheckBox;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "kidsIcon"

    const-string v4, "getKidsIcon()Landroid/widget/ImageView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lo/AudioPlaybackHandler;->a:[Lo/amT;

    new-instance v0, Lo/AudioPlaybackHandler$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/AudioPlaybackHandler$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/AudioPlaybackHandler;->c:Lo/AudioPlaybackHandler$Application;

    .line 26
    sget v0, Lcom/netflix/mediaclient/ui/R$Application;->g:I

    sput v0, Lo/AudioPlaybackHandler;->h:I

    .line 27
    sget v0, Lcom/netflix/mediaclient/ui/R$Application;->w:I

    sput v0, Lo/AudioPlaybackHandler;->j:I

    return-void
.end method

.method public constructor <init>(Lo/TextClassificationManager;Lo/InputBinding;Lo/UnicodeScript;Landroid/view/View;)V
    .locals 1

    const-string v0, "signupLogger"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleOwner"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2, p4}, Lo/RecognitionService;-><init>(Lo/TextClassificationManager;Lo/InputBinding;Landroid/view/View;)V

    iput-object p2, p0, Lo/AudioPlaybackHandler;->b:Lo/InputBinding;

    iput-object p3, p0, Lo/AudioPlaybackHandler;->i:Lo/UnicodeScript;

    .line 22
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->iQ:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/AudioPlaybackHandler;->d:Lo/ams;

    .line 23
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->iT:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/AudioPlaybackHandler;->e:Lo/ams;

    return-void
.end method

.method public static final synthetic b()I
    .locals 1

    .line 15
    sget v0, Lo/AudioPlaybackHandler;->j:I

    return v0
.end method

.method public static final synthetic d()I
    .locals 1

    .line 15
    sget v0, Lo/AudioPlaybackHandler;->h:I

    return v0
.end method


# virtual methods
.method public synthetic bind(Lo/AndroidCharacter;)V
    .locals 0

    .line 15
    check-cast p1, Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;

    invoke-virtual {p0, p1}, Lo/AudioPlaybackHandler;->d(Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;)V

    return-void
.end method

.method public final c()Landroid/widget/CheckBox;
    .locals 3

    iget-object v0, p0, Lo/AudioPlaybackHandler;->d:Lo/ams;

    sget-object v1, Lo/AudioPlaybackHandler;->a:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    return-object v0
.end method

.method public d(Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;)V
    .locals 2

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v0, p1

    check-cast v0, Lo/AndroidCharacter;

    invoke-super {p0, v0}, Lo/RecognitionService;->bind(Lo/AndroidCharacter;)V

    .line 32
    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;->showKidsCheckbox()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lo/AudioPlaybackHandler;->c()Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 34
    invoke-virtual {p0}, Lo/AudioPlaybackHandler;->e()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lo/AudioPlaybackHandler;->c()Landroid/widget/CheckBox;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 37
    invoke-virtual {p0}, Lo/AudioPlaybackHandler;->e()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    :goto_0
    invoke-virtual {p0}, Lo/AudioPlaybackHandler;->c()Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lo/AudioPlaybackHandler$StateListAnimator;

    invoke-direct {v1, p0, p1}, Lo/AudioPlaybackHandler$StateListAnimator;-><init>(Lo/AudioPlaybackHandler;Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;)V

    check-cast v1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final e()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lo/AudioPlaybackHandler;->e:Lo/ams;

    sget-object v1, Lo/AudioPlaybackHandler;->a:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextInputLayoutBackgroundRes(ZZZ)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
