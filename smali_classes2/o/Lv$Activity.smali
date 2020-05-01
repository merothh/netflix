.class final Lo/Lv$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Lv;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/Lv;


# direct methods
.method constructor <init>(Lo/Lv;)V
    .locals 0

    iput-object p1, p0, Lo/Lv$Activity;->e:Lo/Lv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lo/Lv$Activity;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e(Ljava/lang/Throwable;)V
    .locals 1

    const-string p1, "something went wrong"

    const/4 v0, 0x1

    .line 181
    invoke-static {p1, v0}, Lo/adk;->d(Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 182
    iget-object p1, p0, Lo/Lv$Activity;->e:Lo/Lv;

    invoke-virtual {p1}, Lo/Lv;->dismiss()V

    return-void
.end method
