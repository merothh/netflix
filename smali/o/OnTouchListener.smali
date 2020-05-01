.class public final Lo/OnTouchListener;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[Ljava/lang/CharSequence;

.field private final c:Landroid/os/Bundle;

.field private final d:Z

.field private final e:Ljava/lang/CharSequence;

.field private final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static c([Lo/OnTouchListener;)[Landroid/app/RemoteInput;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 504
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Landroid/app/RemoteInput;

    const/4 v1, 0x0

    .line 505
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 506
    aget-object v2, p0, v1

    invoke-static {v2}, Lo/OnTouchListener;->d(Lo/OnTouchListener;)Landroid/app/RemoteInput;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static d(Lo/OnTouchListener;)Landroid/app/RemoteInput;
    .locals 2

    .line 513
    new-instance v0, Landroid/app/RemoteInput$Builder;

    invoke-virtual {p0}, Lo/OnTouchListener;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p0}, Lo/OnTouchListener;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    .line 515
    invoke-virtual {p0}, Lo/OnTouchListener;->d()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    .line 516
    invoke-virtual {p0}, Lo/OnTouchListener;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    .line 517
    invoke-virtual {p0}, Lo/OnTouchListener;->g()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    move-result-object p0

    .line 518
    invoke-virtual {p0}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 1

    .line 99
    iget-object v0, p0, Lo/OnTouchListener;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lo/OnTouchListener;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lo/OnTouchListener;->j:Ljava/util/Set;

    return-object v0
.end method

.method public d()[Ljava/lang/CharSequence;
    .locals 1

    .line 106
    iget-object v0, p0, Lo/OnTouchListener;->b:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 119
    invoke-virtual {p0}, Lo/OnTouchListener;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lo/OnTouchListener;->d()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/OnTouchListener;->d()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 121
    :cond_0
    invoke-virtual {p0}, Lo/OnTouchListener;->c()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lo/OnTouchListener;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Landroid/os/Bundle;
    .locals 1

    .line 139
    iget-object v0, p0, Lo/OnTouchListener;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lo/OnTouchListener;->d:Z

    return v0
.end method
