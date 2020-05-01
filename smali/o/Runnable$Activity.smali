.class Lo/Runnable$Activity;
.super Landroidx/preference/Preference;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation


# instance fields
.field private c:J


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;J)V"
        }
    .end annotation

    .line 168
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 169
    invoke-direct {p0}, Lo/Runnable$Activity;->c()V

    .line 170
    invoke-direct {p0, p2}, Lo/Runnable$Activity;->b(Ljava/util/List;)V

    const-wide/32 p1, 0xf4240

    add-long/2addr p3, p1

    .line 174
    iput-wide p3, p0, Lo/Runnable$Activity;->c:J

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;)V"
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    .line 195
    invoke-virtual {v2}, Landroidx/preference/Preference;->w()Ljava/lang/CharSequence;

    move-result-object v3

    .line 196
    instance-of v4, v2, Landroidx/preference/PreferenceGroup;

    if-eqz v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 197
    move-object v5, v2

    check-cast v5, Landroidx/preference/PreferenceGroup;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_1
    invoke-virtual {v2}, Landroidx/preference/Preference;->P()Landroidx/preference/PreferenceGroup;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_0

    .line 201
    check-cast v2, Landroidx/preference/PreferenceGroup;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v1, :cond_3

    move-object v1, v3

    goto :goto_0

    .line 209
    :cond_3
    invoke-virtual {p0}, Lo/Runnable$Activity;->G()Landroid/content/Context;

    move-result-object v2

    sget v4, Lo/StackTraceElement$TaskDescription;->c:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v3, v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 214
    :cond_4
    invoke-virtual {p0, v1}, Lo/Runnable$Activity;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private c()V
    .locals 1

    .line 178
    sget v0, Lo/StackTraceElement$Activity;->e:I

    invoke-virtual {p0, v0}, Lo/Runnable$Activity;->c(I)V

    .line 179
    sget v0, Lo/StackTraceElement$StateListAnimator;->d:I

    invoke-virtual {p0, v0}, Lo/Runnable$Activity;->a(I)V

    .line 180
    sget v0, Lo/StackTraceElement$TaskDescription;->b:I

    invoke-virtual {p0, v0}, Lo/Runnable$Activity;->e(I)V

    const/16 v0, 0x3e7

    .line 182
    invoke-virtual {p0, v0}, Lo/Runnable$Activity;->b(I)V

    return-void
.end method


# virtual methods
.method public c(Lo/String;)V
    .locals 1

    .line 219
    invoke-super {p0, p1}, Landroidx/preference/Preference;->c(Lo/String;)V

    const/4 v0, 0x0

    .line 220
    invoke-virtual {p1, v0}, Lo/String;->b(Z)V

    return-void
.end method

.method public e()J
    .locals 2

    .line 225
    iget-wide v0, p0, Lo/Runnable$Activity;->c:J

    return-wide v0
.end method
