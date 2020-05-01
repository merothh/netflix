.class public final Lo/VoiceInteractionServiceInfo;
.super Lo/RecognitionService;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/RecognitionService<",
        "Lo/VoiceInteractionSession;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lo/InputBinding;


# direct methods
.method public constructor <init>(Lo/TextClassificationManager;Lo/InputBinding;Landroid/view/View;)V
    .locals 1

    const-string v0, "signupLogger"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lo/RecognitionService;-><init>(Lo/TextClassificationManager;Lo/InputBinding;Landroid/view/View;)V

    iput-object p2, p0, Lo/VoiceInteractionServiceInfo;->c:Lo/InputBinding;

    return-void
.end method

.method public static final synthetic d(Lo/VoiceInteractionServiceInfo;Lo/VoiceInteractionSession;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lo/VoiceInteractionServiceInfo;->d(Lo/VoiceInteractionSession;)V

    return-void
.end method

.method private final d(Lo/VoiceInteractionSession;)V
    .locals 6

    .line 33
    invoke-virtual {p1}, Lo/VoiceInteractionSession;->c()Lo/FileSynthesisCallback;

    move-result-object v0

    invoke-interface {v0}, Lo/FileSynthesisCallback;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/VoiceInteractionSession;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lo/VoiceInteractionServiceInfo;->c:Lo/InputBinding;

    invoke-virtual {p1, v0, v1}, Lo/VoiceInteractionSession;->e(Ljava/util/List;Lo/InputBinding;)[Ljava/lang/String;

    move-result-object v1

    .line 36
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lo/VoiceInteractionServiceInfo;->itemView:Landroid/view/View;

    const-string v4, "itemView"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 38
    move-object v3, v1

    check-cast v3, [Ljava/lang/CharSequence;

    .line 39
    new-instance v5, Lo/VoiceInteractionServiceInfo$StateListAnimator;

    invoke-direct {v5, p0, p1, v0, v1}, Lo/VoiceInteractionServiceInfo$StateListAnimator;-><init>(Lo/VoiceInteractionServiceInfo;Lo/VoiceInteractionSession;Ljava/util/List;[Ljava/lang/String;)V

    check-cast v5, Landroid/content/DialogInterface$OnClickListener;

    .line 37
    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 45
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const-string v1, "alertDialog"

    .line 48
    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const-string v2, "alertDialog.listView"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    iget-object v5, p0, Lo/VoiceInteractionServiceInfo;->itemView:Landroid/view/View;

    invoke-static {v5, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/netflix/mediaclient/ui/R$Application;->L:I

    invoke-static {v4, v5}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 49
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 50
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public b(Lo/VoiceInteractionSession;)V
    .locals 1

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    move-object v0, p1

    check-cast v0, Lo/AndroidCharacter;

    invoke-super {p0, v0}, Lo/RecognitionService;->bind(Lo/AndroidCharacter;)V

    .line 20
    new-instance v0, Lo/VoiceInteractionServiceInfo$Application;

    invoke-direct {v0, p0, p1}, Lo/VoiceInteractionServiceInfo$Application;-><init>(Lo/VoiceInteractionServiceInfo;Lo/VoiceInteractionSession;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    .line 28
    iget-object p1, p0, Lo/VoiceInteractionServiceInfo;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    invoke-virtual {p0}, Lo/VoiceInteractionServiceInfo;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic bind(Lo/AndroidCharacter;)V
    .locals 0

    .line 11
    check-cast p1, Lo/VoiceInteractionSession;

    invoke-virtual {p0, p1}, Lo/VoiceInteractionServiceInfo;->b(Lo/VoiceInteractionSession;)V

    return-void
.end method
