.class public final Lo/NdefFormatable;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Landroidx/appcompat/widget/AppCompatTextView;Ljava/lang/CharSequence;)V
    .locals 2

    const-string v0, "$this$setTextAsync"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 17
    invoke-static {p1}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 20
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getTextMetricsParamsCompat()Lo/InMemoryDexClassLoader$Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lo/InMemoryDexClassLoader;->b(Ljava/lang/CharSequence;Lo/InMemoryDexClassLoader$Application;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextFuture(Ljava/util/concurrent/Future;)V

    :goto_2
    return-void
.end method
