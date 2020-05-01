.class public Lo/Kl$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Kl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Activity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)Lo/PooledStringWriter;
    .locals 5

    .line 158
    invoke-static {p0}, Lo/Lq;->b(Landroid/content/Context;)I

    move-result v0

    .line 159
    invoke-static {}, Lo/adq;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3fd9999a    # 1.7f

    goto :goto_0

    :cond_0
    const v1, 0x3fe66666    # 1.8f

    .line 163
    :goto_0
    invoke-static {}, Lo/Lq;->b()I

    move-result v2

    .line 164
    invoke-static {p1}, Lo/PooledStringWriter;->d(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v3

    new-instance v4, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    invoke-direct {v4}, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;-><init>()V

    .line 165
    invoke-virtual {v3, v4}, Lo/PooledStringWriter$TaskDescription;->d(Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;)Lo/PooledStringWriter$TaskDescription;

    move-result-object v3

    .line 166
    invoke-virtual {v3, v0}, Lo/PooledStringWriter$TaskDescription;->a(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v3

    .line 167
    invoke-virtual {v3, v1}, Lo/PooledStringWriter$TaskDescription;->b(F)Lo/PooledStringWriter$TaskDescription;

    move-result-object v1

    .line 168
    invoke-virtual {v1, v2}, Lo/PooledStringWriter$TaskDescription;->c(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v1

    .line 169
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Lo/PooledStringWriter$TaskDescription;->b(Z)Lo/PooledStringWriter$TaskDescription;

    move-result-object v1

    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$TaskDescription;->Q:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lo/PooledStringWriter$TaskDescription;->b(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v1

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 174
    invoke-static {p0, p1}, Lo/Kl$Activity;->e(Landroid/content/Context;I)Lo/PooledStringWriter;

    move-result-object p0

    .line 175
    invoke-virtual {p0}, Lo/PooledStringWriter;->f()F

    move-result p1

    invoke-virtual {v1, p1}, Lo/PooledStringWriter$TaskDescription;->a(F)Lo/PooledStringWriter$TaskDescription;

    .line 176
    invoke-virtual {p0}, Lo/PooledStringWriter;->d()I

    move-result p1

    invoke-virtual {v1, p1}, Lo/PooledStringWriter$TaskDescription;->d(I)Lo/PooledStringWriter$TaskDescription;

    .line 177
    invoke-virtual {p0}, Lo/PooledStringWriter;->l()Z

    move-result p0

    invoke-virtual {v1, p0}, Lo/PooledStringWriter$TaskDescription;->e(Z)Lo/PooledStringWriter$TaskDescription;

    .line 180
    :cond_1
    invoke-virtual {v1}, Lo/PooledStringWriter$TaskDescription;->c()Lo/PooledStringWriter;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;
    .locals 4

    .line 143
    invoke-static {p0}, Lo/adq;->c(Landroid/content/Context;)I

    move-result p0

    .line 144
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;-><init>()V

    const/4 v1, 0x1

    .line 147
    invoke-static {v1, p0}, Lo/Lq;->a(II)I

    move-result v2

    const/4 v3, 0x2

    add-int/2addr v2, v3

    .line 149
    invoke-static {v3, p0}, Lo/Lq;->a(II)I

    move-result p0

    add-int/2addr p0, v3

    mul-int v2, v2, p0

    const/4 p0, 0x0

    .line 146
    invoke-virtual {v0, p0, v2}, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;->c(II)V

    .line 152
    invoke-virtual {v0, v1, p0}, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;->c(II)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;I)Lo/PooledStringWriter;
    .locals 4

    .line 207
    invoke-static {}, Lo/ia;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-static {}, Lo/Lq;->b()I

    move-result v0

    .line 211
    invoke-static {p1}, Lo/PooledStringWriter;->d(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v1

    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    invoke-direct {v2}, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;-><init>()V

    .line 212
    invoke-virtual {v1, v2}, Lo/PooledStringWriter$TaskDescription;->d(Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;)Lo/PooledStringWriter$TaskDescription;

    move-result-object v1

    const/4 v2, 0x2

    .line 213
    invoke-virtual {v1, v2}, Lo/PooledStringWriter$TaskDescription;->a(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    .line 214
    invoke-virtual {v1, v2}, Lo/PooledStringWriter$TaskDescription;->b(F)Lo/PooledStringWriter$TaskDescription;

    move-result-object v1

    .line 215
    invoke-virtual {v1, v0}, Lo/PooledStringWriter$TaskDescription;->c(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v0

    const/4 v1, 0x1

    .line 216
    invoke-virtual {v0, v1}, Lo/PooledStringWriter$TaskDescription;->i(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v0

    .line 217
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lo/PooledStringWriter$TaskDescription;->b(Z)Lo/PooledStringWriter$TaskDescription;

    move-result-object v0

    .line 218
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/netflix/mediaclient/ui/R$TaskDescription;->Q:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lo/PooledStringWriter$TaskDescription;->b(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v0

    .line 221
    invoke-static {p0, p1}, Lo/Kl$Activity;->e(Landroid/content/Context;I)Lo/PooledStringWriter;

    move-result-object p0

    .line 222
    invoke-virtual {p0}, Lo/PooledStringWriter;->f()F

    move-result p1

    mul-float p1, p1, v2

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr p1, v1

    .line 223
    invoke-virtual {v0, p1}, Lo/PooledStringWriter$TaskDescription;->a(F)Lo/PooledStringWriter$TaskDescription;

    .line 224
    invoke-virtual {p0}, Lo/PooledStringWriter;->d()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/PooledStringWriter$TaskDescription;->d(I)Lo/PooledStringWriter$TaskDescription;

    .line 225
    invoke-virtual {p0}, Lo/PooledStringWriter;->l()Z

    move-result p0

    invoke-virtual {v0, p0}, Lo/PooledStringWriter$TaskDescription;->e(Z)Lo/PooledStringWriter$TaskDescription;

    .line 227
    invoke-virtual {v0}, Lo/PooledStringWriter$TaskDescription;->c()Lo/PooledStringWriter;

    move-result-object p0

    return-object p0

    .line 229
    :cond_0
    invoke-static {p0, p1}, Lo/Kl$Activity;->e(Landroid/content/Context;I)Lo/PooledStringWriter;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic c(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$PendingIntent;
    .locals 4

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aN:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->Q:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x1010054

    .line 109
    invoke-static {p0, v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b(Landroid/content/Context;I)I

    move-result v2

    .line 110
    new-instance v3, Lo/ProxyFileDescriptorCallback;

    invoke-direct {v3, p0, v2, v0, v1}, Lo/ProxyFileDescriptorCallback;-><init>(Landroid/content/Context;III)V

    return-object v3
.end method

.method public static c(Landroid/content/Context;I)Lo/PooledStringWriter;
    .locals 4

    .line 185
    invoke-static {p0}, Lo/Lq;->b(Landroid/content/Context;)I

    move-result v0

    .line 187
    invoke-static {}, Lo/Lq;->b()I

    move-result v1

    .line 188
    invoke-static {p1}, Lo/PooledStringWriter;->d(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v2

    new-instance v3, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    invoke-direct {v3}, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;-><init>()V

    .line 189
    invoke-virtual {v2, v3}, Lo/PooledStringWriter$TaskDescription;->d(Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;)Lo/PooledStringWriter$TaskDescription;

    move-result-object v2

    .line 190
    invoke-virtual {v2, v0}, Lo/PooledStringWriter$TaskDescription;->a(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v2

    const v3, 0x3fd9999a    # 1.7f

    .line 191
    invoke-virtual {v2, v3}, Lo/PooledStringWriter$TaskDescription;->b(F)Lo/PooledStringWriter$TaskDescription;

    move-result-object v2

    .line 192
    invoke-virtual {v2, v1}, Lo/PooledStringWriter$TaskDescription;->c(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v1

    .line 193
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Lo/PooledStringWriter$TaskDescription;->b(Z)Lo/PooledStringWriter$TaskDescription;

    move-result-object v1

    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$TaskDescription;->Q:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lo/PooledStringWriter$TaskDescription;->b(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 197
    invoke-static {p0, p1}, Lo/Kl$Activity;->e(Landroid/content/Context;I)Lo/PooledStringWriter;

    move-result-object p0

    .line 198
    invoke-virtual {p0}, Lo/PooledStringWriter;->f()F

    move-result p1

    invoke-virtual {v1, p1}, Lo/PooledStringWriter$TaskDescription;->a(F)Lo/PooledStringWriter$TaskDescription;

    .line 199
    invoke-virtual {p0}, Lo/PooledStringWriter;->d()I

    move-result p1

    invoke-virtual {v1, p1}, Lo/PooledStringWriter$TaskDescription;->d(I)Lo/PooledStringWriter$TaskDescription;

    .line 200
    invoke-virtual {p0}, Lo/PooledStringWriter;->l()Z

    move-result p0

    invoke-virtual {v1, p0}, Lo/PooledStringWriter$TaskDescription;->e(Z)Lo/PooledStringWriter$TaskDescription;

    .line 203
    :cond_0
    invoke-virtual {v1}, Lo/PooledStringWriter$TaskDescription;->c()Lo/PooledStringWriter;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;I)Lo/PooledStringWriter;
    .locals 3

    .line 100
    invoke-static {p0}, Lo/adq;->e(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lo/adq;->c(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lo/Lq;->a(II)I

    move-result v0

    .line 101
    invoke-static {}, Lo/Lq;->b()I

    move-result v1

    .line 102
    invoke-static {p1}, Lo/PooledStringWriter;->d(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    const/4 v2, 0x1

    .line 103
    invoke-virtual {p1, v2}, Lo/PooledStringWriter$TaskDescription;->e(Z)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    const/high16 v2, 0x3e800000    # 0.25f

    .line 104
    invoke-virtual {p1, v2}, Lo/PooledStringWriter$TaskDescription;->a(F)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    .line 105
    invoke-static {p0}, Lo/Kl$Activity;->b(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    move-result-object v2

    invoke-virtual {p1, v2}, Lo/PooledStringWriter$TaskDescription;->d(Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    new-instance v2, Lo/Km;

    invoke-direct {v2, p0}, Lo/Km;-><init>(Landroid/content/Context;)V

    .line 106
    invoke-virtual {p1, v2}, Lo/PooledStringWriter$TaskDescription;->d(Lo/PooledStringWriter$Activity;)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    .line 116
    invoke-virtual {p1, v0}, Lo/PooledStringWriter$TaskDescription;->a(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    const v0, 0x3fb70a3d    # 1.43f

    .line 117
    invoke-virtual {p1, v0}, Lo/PooledStringWriter$TaskDescription;->b(F)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    .line 118
    invoke-virtual {p1, v1}, Lo/PooledStringWriter$TaskDescription;->c(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/netflix/mediaclient/ui/R$TaskDescription;->Q:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lo/PooledStringWriter$TaskDescription;->b(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p0

    .line 120
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b()Z

    move-result p1

    invoke-virtual {p0, p1}, Lo/PooledStringWriter$TaskDescription;->b(Z)Lo/PooledStringWriter$TaskDescription;

    move-result-object p0

    .line 121
    invoke-virtual {p0}, Lo/PooledStringWriter$TaskDescription;->c()Lo/PooledStringWriter;

    move-result-object p0

    return-object p0
.end method

.method static d(Landroid/content/Context;II)Lo/PooledStringWriter;
    .locals 2

    .line 126
    invoke-static {p1}, Lo/PooledStringWriter;->d(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    const/4 v0, 0x1

    .line 127
    invoke-virtual {p1, v0}, Lo/PooledStringWriter$TaskDescription;->e(Z)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p1, v0}, Lo/PooledStringWriter$TaskDescription;->a(F)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    .line 129
    invoke-static {p0}, Lo/Kl$Activity;->b(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/PooledStringWriter$TaskDescription;->d(Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    .line 130
    invoke-virtual {p1, p2}, Lo/PooledStringWriter$TaskDescription;->a(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    const v0, 0x3fb70a3d    # 1.43f

    .line 131
    invoke-virtual {p1, v0}, Lo/PooledStringWriter$TaskDescription;->b(F)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->Q:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lo/PooledStringWriter$TaskDescription;->c(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/netflix/mediaclient/ui/R$TaskDescription;->Q:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lo/PooledStringWriter$TaskDescription;->b(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p0

    .line 134
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b()Z

    move-result p1

    invoke-virtual {p0, p1}, Lo/PooledStringWriter$TaskDescription;->b(Z)Lo/PooledStringWriter$TaskDescription;

    move-result-object p0

    .line 135
    invoke-virtual {p0, p2}, Lo/PooledStringWriter$TaskDescription;->j(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p0

    .line 136
    invoke-virtual {p0}, Lo/PooledStringWriter$TaskDescription;->c()Lo/PooledStringWriter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$PendingIntent;
    .locals 0

    invoke-static {p0}, Lo/Kl$Activity;->c(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;I)Lo/PooledStringWriter;
    .locals 3

    .line 84
    invoke-static {p0}, Lo/adq;->e(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lo/adq;->c(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lo/Lq;->a(II)I

    move-result v0

    .line 85
    invoke-static {}, Lo/Lq;->b()I

    move-result v1

    .line 86
    invoke-static {p1}, Lo/PooledStringWriter;->d(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    const/4 v2, 0x1

    .line 87
    invoke-virtual {p1, v2}, Lo/PooledStringWriter$TaskDescription;->e(Z)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    const/high16 v2, 0x3e800000    # 0.25f

    .line 88
    invoke-virtual {p1, v2}, Lo/PooledStringWriter$TaskDescription;->a(F)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    .line 89
    invoke-static {p0}, Lo/Kl$Activity;->b(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    move-result-object v2

    invoke-virtual {p1, v2}, Lo/PooledStringWriter$TaskDescription;->d(Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    .line 90
    invoke-virtual {p1, v0}, Lo/PooledStringWriter$TaskDescription;->a(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    const v0, 0x3fb70a3d    # 1.43f

    .line 91
    invoke-virtual {p1, v0}, Lo/PooledStringWriter$TaskDescription;->b(F)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    .line 92
    invoke-virtual {p1, v1}, Lo/PooledStringWriter$TaskDescription;->c(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p1

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/netflix/mediaclient/ui/R$TaskDescription;->Q:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lo/PooledStringWriter$TaskDescription;->b(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p0

    .line 94
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b()Z

    move-result p1

    invoke-virtual {p0, p1}, Lo/PooledStringWriter$TaskDescription;->b(Z)Lo/PooledStringWriter$TaskDescription;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Lo/PooledStringWriter$TaskDescription;->c()Lo/PooledStringWriter;

    move-result-object p0

    return-object p0
.end method
