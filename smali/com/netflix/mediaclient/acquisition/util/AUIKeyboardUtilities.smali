.class public final Lcom/netflix/mediaclient/acquisition/util/AUIKeyboardUtilities;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/netflix/mediaclient/acquisition/util/AUIKeyboardUtilities;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/netflix/mediaclient/acquisition/util/AUIKeyboardUtilities;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition/util/AUIKeyboardUtilities;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/util/AUIKeyboardUtilities;->INSTANCE:Lcom/netflix/mediaclient/acquisition/util/AUIKeyboardUtilities;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dismissContextKeyboard(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 19
    sget-object v0, Lcom/netflix/mediaclient/acquisition/util/AUIKeyboardUtilities;->INSTANCE:Lcom/netflix/mediaclient/acquisition/util/AUIKeyboardUtilities;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/acquisition/util/AUIKeyboardUtilities;->dismissKeyboard(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public final dismissKeyboard(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input_method"

    .line 10
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 12
    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void

    .line 10
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
