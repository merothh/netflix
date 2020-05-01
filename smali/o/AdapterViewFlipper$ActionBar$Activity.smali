.class public final Lo/AdapterViewFlipper$ActionBar$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AdapterViewFlipper$ActionBar;->b(Lo/Serializable;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/AdapterViewFlipper$ActionBar;

.field public final synthetic d:Lo/Serializable;


# direct methods
.method constructor <init>(Lo/AdapterViewFlipper$ActionBar;Lo/Serializable;)V
    .locals 0

    iput-object p1, p0, Lo/AdapterViewFlipper$ActionBar$Activity;->a:Lo/AdapterViewFlipper$ActionBar;

    iput-object p2, p0, Lo/AdapterViewFlipper$ActionBar$Activity;->d:Lo/Serializable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 69
    check-cast p1, Lo/AdapterViewFlipper$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/AdapterViewFlipper$ActionBar$Activity;->d(Lo/AdapterViewFlipper$StateListAnimator;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lo/AdapterViewFlipper$StateListAnimator;)Landroid/content/Intent;
    .locals 5

    const-string v0, "story"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lo/AdapterViewFlipper$ActionBar$Activity;->a:Lo/AdapterViewFlipper$ActionBar;

    iget-object v0, v0, Lo/AdapterViewFlipper$ActionBar;->a:Lo/AdapterViewFlipper;

    invoke-static {v0}, Lo/AdapterViewFlipper;->d(Lo/AdapterViewFlipper;)Landroid/content/Intent;

    move-result-object v0

    .line 91
    sget-object v1, Lo/AdapterViewFlipper;->b:Lo/AdapterViewFlipper$TaskDescription;

    check-cast v1, Lo/MessagePdu;

    .line 93
    invoke-virtual {p1}, Lo/AdapterViewFlipper$StateListAnimator;->a()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    sget-object v2, Lo/AdapterViewFlipper;->b:Lo/AdapterViewFlipper$TaskDescription;

    check-cast v2, Lo/MessagePdu;

    .line 95
    iget-object v2, p0, Lo/AdapterViewFlipper$ActionBar$Activity;->d:Lo/Serializable;

    .line 96
    sget-object v3, Lo/WebViewFactoryProvider;->b:Lo/WebViewFactoryProvider$TaskDescription;

    invoke-virtual {v3}, Lo/WebViewFactoryProvider$TaskDescription;->h()Lo/WebViewFactoryProvider;

    move-result-object v3

    invoke-virtual {v3}, Lo/WebViewFactoryProvider;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 95
    invoke-virtual {v2, v3, v1, v4}, Lo/Serializable;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 98
    check-cast v1, Landroid/os/Parcelable;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 101
    :cond_0
    invoke-virtual {p1}, Lo/AdapterViewFlipper$StateListAnimator;->e()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lo/AdapterViewFlipper$StateListAnimator;->b()Lo/AdapterViewFlipper$Activity;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/android/sharing/impl/targets/Snapchat$shareTarget$1$share$1$$special$$inlined$apply$lambda$1;

    invoke-direct {v3, v0, p0, p1}, Lcom/netflix/mediaclient/android/sharing/impl/targets/Snapchat$shareTarget$1$share$1$$special$$inlined$apply$lambda$1;-><init>(Landroid/content/Intent;Lo/AdapterViewFlipper$ActionBar$Activity;Lo/AdapterViewFlipper$StateListAnimator;)V

    check-cast v3, Lo/alN;

    invoke-static {v1, v2, v3}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    .line 121
    invoke-virtual {p1}, Lo/AdapterViewFlipper$StateListAnimator;->c()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 122
    sget-object v1, Lo/AdapterViewFlipper;->b:Lo/AdapterViewFlipper$TaskDescription;

    check-cast v1, Lo/MessagePdu;

    const-string v1, "attachmentUrl"

    .line 123
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    return-object v0
.end method
