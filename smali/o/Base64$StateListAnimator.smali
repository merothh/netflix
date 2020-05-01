.class final Lo/Base64$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FragmentManagerNonConfig$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Base64;->d(Landroid/content/Context;Lo/alB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/alB;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lo/Base64;


# direct methods
.method constructor <init>(Lo/Base64;Landroid/content/Context;Lo/alB;)V
    .locals 0

    iput-object p1, p0, Lo/Base64$StateListAnimator;->d:Lo/Base64;

    iput-object p2, p0, Lo/Base64$StateListAnimator;->c:Landroid/content/Context;

    iput-object p3, p0, Lo/Base64$StateListAnimator;->a:Lo/alB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/android/volley/VolleyError;)V
    .locals 2

    const-string p1, "CardPayViewModel"

    const-string v0, "Error fetching Secure MOP key!"

    .line 268
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object p1, p0, Lo/Base64$StateListAnimator;->d:Lo/Base64;

    invoke-virtual {p1}, Lo/Base64;->l()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lo/Base64;->e(I)V

    .line 273
    iget-object p1, p0, Lo/Base64$StateListAnimator;->d:Lo/Base64;

    invoke-virtual {p1}, Lo/Base64;->l()I

    move-result p1

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    .line 274
    iget-object p1, p0, Lo/Base64$StateListAnimator;->d:Lo/Base64;

    iget-object v0, p0, Lo/Base64$StateListAnimator;->c:Landroid/content/Context;

    iget-object v1, p0, Lo/Base64$StateListAnimator;->a:Lo/alB;

    invoke-virtual {p1, v0, v1}, Lo/Base64;->d(Landroid/content/Context;Lo/alB;)V

    goto :goto_0

    .line 276
    :cond_0
    iget-object p1, p0, Lo/Base64$StateListAnimator;->a:Lo/alB;

    invoke-interface {p1}, Lo/alB;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method
