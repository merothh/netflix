.class Lcom/netflix/android/tooltips/Tooltip$3;
.super Ljava/lang/Object;
.source "Tooltip.java"

# interfaces
.implements Lcom/netflix/android/tooltips/Tooltip$Callback;


# instance fields
.field final synthetic this$0:Lcom/netflix/android/tooltips/Tooltip;


# direct methods
.method constructor <init>(Lcom/netflix/android/tooltips/Tooltip;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/netflix/android/tooltips/Tooltip$3;->this$0:Lcom/netflix/android/tooltips/Tooltip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Lcom/netflix/android/tooltips/Tooltip;)V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/netflix/android/tooltips/Tooltip$3;->this$0:Lcom/netflix/android/tooltips/Tooltip;

    invoke-static {v0}, Lcom/netflix/android/tooltips/Tooltip;->access$300(Lcom/netflix/android/tooltips/Tooltip;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/netflix/android/tooltips/Tooltip$3;->this$0:Lcom/netflix/android/tooltips/Tooltip;

    invoke-static {v0}, Lcom/netflix/android/tooltips/Tooltip;->access$500(Lcom/netflix/android/tooltips/Tooltip;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/tooltips/Tooltip$3;->this$0:Lcom/netflix/android/tooltips/Tooltip;

    .line 123
    invoke-static {v1}, Lcom/netflix/android/tooltips/Tooltip;->access$400(Lcom/netflix/android/tooltips/Tooltip;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/netflix/android/tooltips/Tooltip$3;->this$0:Lcom/netflix/android/tooltips/Tooltip;

    invoke-static {v0}, Lcom/netflix/android/tooltips/Tooltip;->access$200(Lcom/netflix/android/tooltips/Tooltip;)Lcom/netflix/android/tooltips/Tooltip$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/netflix/android/tooltips/Tooltip$3;->this$0:Lcom/netflix/android/tooltips/Tooltip;

    invoke-static {v0}, Lcom/netflix/android/tooltips/Tooltip;->access$200(Lcom/netflix/android/tooltips/Tooltip;)Lcom/netflix/android/tooltips/Tooltip$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/tooltips/Tooltip$3;->this$0:Lcom/netflix/android/tooltips/Tooltip;

    invoke-interface {v0, v1}, Lcom/netflix/android/tooltips/Tooltip$Callback;->onDismissed(Lcom/netflix/android/tooltips/Tooltip;)V

    .line 130
    :cond_1
    return-void
.end method

.method public onShown(Lcom/netflix/android/tooltips/Tooltip;)V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/netflix/android/tooltips/Tooltip$3;->this$0:Lcom/netflix/android/tooltips/Tooltip;

    invoke-static {v0}, Lcom/netflix/android/tooltips/Tooltip;->access$200(Lcom/netflix/android/tooltips/Tooltip;)Lcom/netflix/android/tooltips/Tooltip$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/netflix/android/tooltips/Tooltip$3;->this$0:Lcom/netflix/android/tooltips/Tooltip;

    invoke-static {v0}, Lcom/netflix/android/tooltips/Tooltip;->access$200(Lcom/netflix/android/tooltips/Tooltip;)Lcom/netflix/android/tooltips/Tooltip$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/tooltips/Tooltip$3;->this$0:Lcom/netflix/android/tooltips/Tooltip;

    invoke-interface {v0, v1}, Lcom/netflix/android/tooltips/Tooltip$Callback;->onShown(Lcom/netflix/android/tooltips/Tooltip;)V

    .line 116
    :cond_0
    return-void
.end method
