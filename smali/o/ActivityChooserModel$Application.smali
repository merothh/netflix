.class final Lo/ActivityChooserModel$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ActivityChooserModel;->b(Lo/Serializable;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

.field final synthetic c:Lo/ActivityChooserModel;


# direct methods
.method constructor <init>(Lo/ActivityChooserModel;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)V
    .locals 0

    iput-object p1, p0, Lo/ActivityChooserModel$Application;->c:Lo/ActivityChooserModel;

    iput-object p2, p0, Lo/ActivityChooserModel$Application;->b:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lo/ActivityChooserModel$Application;->d()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final d()Landroid/content/Intent;
    .locals 4

    .line 31
    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 51
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 52
    const-class v1, Landroid/content/ClipboardManager;

    invoke-static {v0, v1}, Lo/OnSystemUiVisibilityChangeListener;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    const-string v1, "simple text"

    .line 32
    check-cast v1, Ljava/lang/CharSequence;

    iget-object v2, p0, Lo/ActivityChooserModel$Application;->c:Lo/ActivityChooserModel;

    iget-object v3, p0, Lo/ActivityChooserModel$Application;->b:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

    invoke-virtual {v2, v3}, Lo/ActivityChooserModel;->a(Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 34
    sget v0, Lo/WebViewProviderResponse$TaskDescription;->e:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/adk;->c(II)V

    .line 37
    :cond_0
    sget-object v0, Lo/WebViewProvider;->c:Lo/WebViewProvider$Activity;

    invoke-virtual {v0}, Lo/WebViewProvider$Activity;->e()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
