.class public final Lcom/netflix/android/mdxpanel/controls/MdxControlsUIViewImpl$setTimeTexts$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DeviceIdleManager;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/DeviceIdleManager;


# direct methods
.method public constructor <init>(Lo/DeviceIdleManager;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIViewImpl$setTimeTexts$1;->e:Lo/DeviceIdleManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(II)V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIViewImpl$setTimeTexts$1;->e:Lo/DeviceIdleManager;

    invoke-static {v0}, Lo/DeviceIdleManager;->d(Lo/DeviceIdleManager;)Lo/ImageSwitcher;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIViewImpl$setTimeTexts$1;->e:Lo/DeviceIdleManager;

    invoke-static {v1}, Lo/DeviceIdleManager;->c(Lo/DeviceIdleManager;)Lo/aeA;

    move-result-object v1

    invoke-virtual {v1, p1}, Lo/aeA;->b(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIViewImpl$setTimeTexts$1;->e:Lo/DeviceIdleManager;

    invoke-static {v0}, Lo/DeviceIdleManager;->b(Lo/DeviceIdleManager;)Lo/ImageSwitcher;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIViewImpl$setTimeTexts$1;->e:Lo/DeviceIdleManager;

    invoke-static {v1}, Lo/DeviceIdleManager;->c(Lo/DeviceIdleManager;)Lo/aeA;

    move-result-object v1

    sub-int/2addr p2, p1

    invoke-virtual {v1, p2}, Lo/aeA;->b(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/netflix/android/mdxpanel/controls/MdxControlsUIViewImpl$setTimeTexts$1;->e(II)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
