.class final Lo/SpannableStringInternal$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SpannableStringInternal;->b(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;ZLo/RecognizerIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/SpannableStringInternal;

.field final synthetic e:Lo/RecognizerIntent;


# direct methods
.method constructor <init>(Lo/SpannableStringInternal;Lo/RecognizerIntent;)V
    .locals 0

    iput-object p1, p0, Lo/SpannableStringInternal$ActionBar;->b:Lo/SpannableStringInternal;

    iput-object p2, p0, Lo/SpannableStringInternal$ActionBar;->e:Lo/RecognizerIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 18
    iget-object p1, p0, Lo/SpannableStringInternal$ActionBar;->e:Lo/RecognizerIntent;

    invoke-interface {p1}, Lo/RecognizerIntent;->e()V

    .line 21
    :cond_0
    iget-object p1, p0, Lo/SpannableStringInternal$ActionBar;->b:Lo/SpannableStringInternal;

    invoke-static {p1}, Lo/SpannableStringInternal;->a(Lo/SpannableStringInternal;)Lo/GateKeeperResponse;

    move-result-object p1

    invoke-virtual {p1}, Lo/GateKeeperResponse;->d()V

    const/4 p1, 0x1

    return p1
.end method
