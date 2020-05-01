.class final Lo/ActivityChooserView$Activity$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ActivityChooserView$Activity;->b(Lo/Serializable;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
.field final synthetic b:Lo/Serializable;


# direct methods
.method constructor <init>(Lo/Serializable;)V
    .locals 0

    iput-object p1, p0, Lo/ActivityChooserView$Activity$Activity;->b:Lo/Serializable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 60
    check-cast p1, Lo/ActivityChooserView$Application;

    invoke-virtual {p0, p1}, Lo/ActivityChooserView$Activity$Activity;->b(Lo/ActivityChooserView$Application;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lo/ActivityChooserView$Application;)Landroid/content/Intent;
    .locals 5

    const-string v0, "story"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.instagram.share.ADD_TO_STORY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    sget-object v1, Lo/ActivityChooserView;->a:Lo/ActivityChooserView$TaskDescription;

    check-cast v1, Lo/MessagePdu;

    .line 81
    invoke-virtual {p1}, Lo/ActivityChooserView$Application;->c()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 83
    sget-object v3, Lo/ActivityChooserView;->a:Lo/ActivityChooserView$TaskDescription;

    check-cast v3, Lo/MessagePdu;

    const-string v3, "image/*"

    .line 84
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    :cond_0
    invoke-virtual {p1}, Lo/ActivityChooserView$Application;->e()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 88
    iget-object v3, p0, Lo/ActivityChooserView$Activity$Activity;->b:Lo/Serializable;

    .line 89
    sget-object v4, Lo/WebViewFactoryProvider;->b:Lo/WebViewFactoryProvider$TaskDescription;

    invoke-virtual {v4}, Lo/WebViewFactoryProvider$TaskDescription;->f()Lo/WebViewFactoryProvider;

    move-result-object v4

    invoke-virtual {v4}, Lo/WebViewFactoryProvider;->b()Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-virtual {v3, v4, v1, v2}, Lo/Serializable;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 91
    sget-object v2, Lo/ActivityChooserView;->a:Lo/ActivityChooserView$TaskDescription;

    check-cast v2, Lo/MessagePdu;

    .line 92
    check-cast v1, Landroid/os/Parcelable;

    const-string v2, "interactive_asset_uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 95
    :cond_1
    invoke-virtual {p1}, Lo/ActivityChooserView$Application;->b()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 96
    sget-object v2, Lo/ActivityChooserView;->a:Lo/ActivityChooserView$TaskDescription;

    check-cast v2, Lo/MessagePdu;

    const-string v2, "top_background_color"

    .line 97
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    :cond_2
    invoke-virtual {p1}, Lo/ActivityChooserView$Application;->a()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 100
    sget-object v2, Lo/ActivityChooserView;->a:Lo/ActivityChooserView$TaskDescription;

    check-cast v2, Lo/MessagePdu;

    const-string v2, "bottom_background_color"

    .line 101
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    :cond_3
    invoke-virtual {p1}, Lo/ActivityChooserView$Application;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 105
    sget-object v1, Lo/ActivityChooserView;->a:Lo/ActivityChooserView$TaskDescription;

    check-cast v1, Lo/MessagePdu;

    const-string v1, "content_url"

    .line 106
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    return-object v0
.end method
