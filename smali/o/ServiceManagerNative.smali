.class public Lo/ServiceManagerNative;
.super Lo/RevocableFileDescriptor;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 14
    invoke-direct {p0, p1, v0, v1}, Lo/ServiceManagerNative;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2, v0}, Lo/ServiceManagerNative;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lo/RevocableFileDescriptor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, ". onViewDetachedFromWindow"

    .line 30
    invoke-virtual {p0, v0}, Lo/ServiceManagerNative;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    const-string v0, ". onFailedToRecycleView"

    .line 42
    invoke-virtual {p0, v0}, Lo/ServiceManagerNative;->b(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    const-string v0, ". onViewRecycled"

    .line 34
    invoke-virtual {p0, v0}, Lo/ServiceManagerNative;->b(Ljava/lang/String;)V

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ". onBindViewHolder("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/ServiceManagerNative;->b(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 1

    const-string v0, ". onLayoutCoverView"

    .line 46
    invoke-virtual {p0, v0}, Lo/ServiceManagerNative;->b(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 1

    const-string v0, ". onViewAttachedToWindow"

    .line 26
    invoke-virtual {p0, v0}, Lo/ServiceManagerNative;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    const-string v0, "ViewHolder"

    return-object v0
.end method
