.class public final Lo/SpannableStringInternal;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final c:Lo/GateKeeperResponse;


# direct methods
.method public constructor <init>(Lo/GateKeeperResponse;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "keyboardController"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/SpannableStringInternal;->c:Lo/GateKeeperResponse;

    return-void
.end method

.method public static final synthetic a(Lo/SpannableStringInternal;)Lo/GateKeeperResponse;
    .locals 0

    .line 9
    iget-object p0, p0, Lo/SpannableStringInternal;->c:Lo/GateKeeperResponse;

    return-object p0
.end method


# virtual methods
.method public final b(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;ZLo/RecognizerIntent;)V
    .locals 1

    const-string v0, "formViewEditText"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formSubmissionListener"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    .line 14
    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->setImeOptions(I)V

    .line 16
    :cond_0
    new-instance p2, Lo/SpannableStringInternal$ActionBar;

    invoke-direct {p2, p0, p3}, Lo/SpannableStringInternal$ActionBar;-><init>(Lo/SpannableStringInternal;Lo/RecognizerIntent;)V

    check-cast p2, Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method
