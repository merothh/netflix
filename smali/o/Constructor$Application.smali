.class public Lo/Constructor$Application;
.super Lo/DataInputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Constructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Application"
.end annotation


# instance fields
.field final b:Lo/Constructor;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lo/DataInputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/Constructor;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Lo/DataInputStream;-><init>()V

    .line 112
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lo/Constructor$Application;->c:Ljava/util/Map;

    .line 120
    iput-object p1, p0, Lo/Constructor$Application;->b:Lo/Constructor;

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)Lo/DataInputStream;
    .locals 1

    .line 138
    iget-object v0, p0, Lo/Constructor$Application;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/DataInputStream;

    return-object p1
.end method

.method public c(Landroid/view/View;)V
    .locals 2

    .line 128
    invoke-static {p1}, Lo/FilterWriter;->b(Landroid/view/View;)Lo/DataInputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 130
    iget-object v1, p0, Lo/Constructor$Application;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 201
    iget-object v0, p0, Lo/Constructor$Application;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/DataInputStream;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0, p1, p2}, Lo/DataInputStream;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 205
    :cond_0
    invoke-super {p0, p1, p2}, Lo/DataInputStream;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Lo/ObjectInputValidation;
    .locals 1

    .line 245
    iget-object v0, p0, Lo/Constructor$Application;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/DataInputStream;

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0, p1}, Lo/DataInputStream;->getAccessibilityNodeProvider(Landroid/view/View;)Lo/ObjectInputValidation;

    move-result-object p1

    return-object p1

    .line 249
    :cond_0
    invoke-super {p0, p1}, Lo/DataInputStream;->getAccessibilityNodeProvider(Landroid/view/View;)Lo/ObjectInputValidation;

    move-result-object p1

    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lo/Constructor$Application;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/DataInputStream;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0, p1, p2}, Lo/DataInputStream;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 227
    :cond_0
    invoke-super {p0, p1, p2}, Lo/DataInputStream;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lo/LineNumberInputStream;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lo/Constructor$Application;->b:Lo/Constructor;

    invoke-virtual {v0}, Lo/Constructor;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/Constructor$Application;->b:Lo/Constructor;

    iget-object v0, v0, Lo/Constructor;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 144
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lo/Constructor$Application;->b:Lo/Constructor;

    iget-object v0, v0, Lo/Constructor;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    .line 146
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Lo/LineNumberInputStream;)V

    .line 147
    iget-object v0, p0, Lo/Constructor$Application;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/DataInputStream;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0, p1, p2}, Lo/DataInputStream;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lo/LineNumberInputStream;)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-super {p0, p1, p2}, Lo/DataInputStream;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lo/LineNumberInputStream;)V

    goto :goto_0

    .line 154
    :cond_1
    invoke-super {p0, p1, p2}, Lo/DataInputStream;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lo/LineNumberInputStream;)V

    :goto_0
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 212
    iget-object v0, p0, Lo/Constructor$Application;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/DataInputStream;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0, p1, p2}, Lo/DataInputStream;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 216
    :cond_0
    invoke-super {p0, p1, p2}, Lo/DataInputStream;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 234
    iget-object v0, p0, Lo/Constructor$Application;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/DataInputStream;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0, p1, p2, p3}, Lo/DataInputStream;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 238
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lo/DataInputStream;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .line 160
    iget-object v0, p0, Lo/Constructor$Application;->b:Lo/Constructor;

    invoke-virtual {v0}, Lo/Constructor;->c()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/Constructor$Application;->b:Lo/Constructor;

    iget-object v0, v0, Lo/Constructor;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 161
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lo/Constructor$Application;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/DataInputStream;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, p1, p2, p3}, Lo/DataInputStream;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 167
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lo/DataInputStream;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 170
    :cond_1
    iget-object v0, p0, Lo/Constructor$Application;->b:Lo/Constructor;

    iget-object v0, v0, Lo/Constructor;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    .line 171
    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 173
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lo/DataInputStream;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .line 179
    iget-object v0, p0, Lo/Constructor$Application;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/DataInputStream;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0, p1, p2}, Lo/DataInputStream;->sendAccessibilityEvent(Landroid/view/View;I)V

    goto :goto_0

    .line 183
    :cond_0
    invoke-super {p0, p1, p2}, Lo/DataInputStream;->sendAccessibilityEvent(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lo/Constructor$Application;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/DataInputStream;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0, p1, p2}, Lo/DataInputStream;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 194
    :cond_0
    invoke-super {p0, p1, p2}, Lo/DataInputStream;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void
.end method
