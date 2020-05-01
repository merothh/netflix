.class public final Lcom/netflix/android/imageloader/api/GetImageRequest;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/android/imageloader/api/GetImageRequest$Reason;,
        Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;,
        Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;,
        Lcom/netflix/android/imageloader/api/GetImageRequest$Application;
    }
.end annotation


# static fields
.field public static final b:Lcom/netflix/android/imageloader/api/GetImageRequest$Application;


# instance fields
.field private a:Landroidx/fragment/app/Fragment;

.field private c:Ljava/lang/String;

.field private d:Lo/Serializable;

.field private e:I

.field private f:Landroid/view/View;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:Z

.field private final n:Lcom/netflix/android/imageloader/api/GetImageRequest$Reason;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/android/imageloader/api/GetImageRequest$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/android/imageloader/api/GetImageRequest$Application;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/android/imageloader/api/GetImageRequest;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$Application;

    return-void
.end method

.method private constructor <init>(Lcom/netflix/android/imageloader/api/GetImageRequest$Reason;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/android/imageloader/api/GetImageRequest;->n:Lcom/netflix/android/imageloader/api/GetImageRequest$Reason;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/netflix/android/imageloader/api/GetImageRequest$Reason;Lo/amc;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/netflix/android/imageloader/api/GetImageRequest;-><init>(Lcom/netflix/android/imageloader/api/GetImageRequest$Reason;)V

    return-void
.end method

.method public static final b()Lcom/netflix/android/imageloader/api/GetImageRequest;
    .locals 1

    sget-object v0, Lcom/netflix/android/imageloader/api/GetImageRequest;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$Application;

    invoke-virtual {v0}, Lcom/netflix/android/imageloader/api/GetImageRequest$Application;->c()Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    return-object v0
.end method

.method private final b(Landroid/view/View;)Lcom/netflix/android/imageloader/api/GetImageRequest;
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/netflix/android/imageloader/api/GetImageRequest;->f:Landroid/view/View;

    return-object p0
.end method

.method public static final b(Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/netflix/android/imageloader/api/GetImageRequest;
    .locals 1

    sget-object v0, Lcom/netflix/android/imageloader/api/GetImageRequest;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$Application;

    invoke-virtual {v0, p0, p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$Application;->b(Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/netflix/android/imageloader/api/GetImageRequest;Landroidx/fragment/app/Fragment;)Lcom/netflix/android/imageloader/api/GetImageRequest;
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(Landroidx/fragment/app/Fragment;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p0

    return-object p0
.end method

.method private final b(Lo/Serializable;)Lcom/netflix/android/imageloader/api/GetImageRequest;
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/netflix/android/imageloader/api/GetImageRequest;->d:Lo/Serializable;

    return-object p0
.end method

.method private final c(Landroidx/fragment/app/Fragment;)Lcom/netflix/android/imageloader/api/GetImageRequest;
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/netflix/android/imageloader/api/GetImageRequest;->a:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method public static final synthetic c(Lcom/netflix/android/imageloader/api/GetImageRequest;Lo/Serializable;)Lcom/netflix/android/imageloader/api/GetImageRequest;
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/netflix/android/imageloader/api/GetImageRequest;->b(Lo/Serializable;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/netflix/android/imageloader/api/GetImageRequest;Landroid/view/View;)Lcom/netflix/android/imageloader/api/GetImageRequest;
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/netflix/android/imageloader/api/GetImageRequest;->b(Landroid/view/View;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Landroidx/fragment/app/Fragment;)Lcom/netflix/android/imageloader/api/GetImageRequest;
    .locals 1

    sget-object v0, Lcom/netflix/android/imageloader/api/GetImageRequest;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$Application;

    invoke-virtual {v0, p0}, Lcom/netflix/android/imageloader/api/GetImageRequest$Application;->d(Landroidx/fragment/app/Fragment;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Z)Lcom/netflix/android/imageloader/api/GetImageRequest;
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/netflix/android/imageloader/api/GetImageRequest;->h:Z

    return-object p0
.end method

.method public final b(I)Lcom/netflix/android/imageloader/api/GetImageRequest;
    .locals 0

    .line 134
    iput p1, p0, Lcom/netflix/android/imageloader/api/GetImageRequest;->j:I

    return-object p0
.end method

.method public final b(Z)Lcom/netflix/android/imageloader/api/GetImageRequest;
    .locals 0

    .line 170
    iput-boolean p1, p0, Lcom/netflix/android/imageloader/api/GetImageRequest;->g:Z

    return-object p0
.end method

.method public final c(I)Lcom/netflix/android/imageloader/api/GetImageRequest;
    .locals 0

    .line 128
    iput p1, p0, Lcom/netflix/android/imageloader/api/GetImageRequest;->e:I

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/GetImageRequest;
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iput-object p1, p0, Lcom/netflix/android/imageloader/api/GetImageRequest;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final c(Z)Lcom/netflix/android/imageloader/api/GetImageRequest;
    .locals 0

    .line 179
    iput-boolean p1, p0, Lcom/netflix/android/imageloader/api/GetImageRequest;->k:Z

    return-object p0
.end method

.method public final d()Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;
    .locals 13

    .line 185
    iget-object v2, p0, Lcom/netflix/android/imageloader/api/GetImageRequest;->c:Ljava/lang/String;

    .line 186
    move-object v0, v2

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-static {v0}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

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
    if-nez v0, :cond_5

    .line 190
    iget-object v0, p0, Lcom/netflix/android/imageloader/api/GetImageRequest;->n:Lcom/netflix/android/imageloader/api/GetImageRequest$Reason;

    sget-object v4, Lcom/netflix/android/imageloader/api/GetImageRequest$Reason;->e:Lcom/netflix/android/imageloader/api/GetImageRequest$Reason;

    if-eq v0, v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_4

    .line 191
    iget-object v0, p0, Lcom/netflix/android/imageloader/api/GetImageRequest;->d:Lo/Serializable;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/netflix/android/imageloader/api/GetImageRequest;->a:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_3

    goto :goto_2

    .line 192
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lifecycle owner required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 195
    :cond_4
    :goto_2
    new-instance v12, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    .line 196
    iget-object v1, p0, Lcom/netflix/android/imageloader/api/GetImageRequest;->n:Lcom/netflix/android/imageloader/api/GetImageRequest$Reason;

    .line 198
    iget-object v3, p0, Lcom/netflix/android/imageloader/api/GetImageRequest;->d:Lo/Serializable;

    .line 199
    iget-object v4, p0, Lcom/netflix/android/imageloader/api/GetImageRequest;->a:Landroidx/fragment/app/Fragment;

    .line 200
    iget v5, p0, Lcom/netflix/android/imageloader/api/GetImageRequest;->e:I

    .line 201
    iget v6, p0, Lcom/netflix/android/imageloader/api/GetImageRequest;->j:I

    .line 202
    iget-boolean v7, p0, Lcom/netflix/android/imageloader/api/GetImageRequest;->h:Z

    .line 203
    iget-boolean v8, p0, Lcom/netflix/android/imageloader/api/GetImageRequest;->i:Z

    .line 204
    iget-object v9, p0, Lcom/netflix/android/imageloader/api/GetImageRequest;->f:Landroid/view/View;

    .line 205
    iget-boolean v10, p0, Lcom/netflix/android/imageloader/api/GetImageRequest;->g:Z

    .line 206
    iget-boolean v11, p0, Lcom/netflix/android/imageloader/api/GetImageRequest;->k:Z

    move-object v0, v12

    .line 195
    invoke-direct/range {v0 .. v11}, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;-><init>(Lcom/netflix/android/imageloader/api/GetImageRequest$Reason;Ljava/lang/String;Lo/Serializable;Landroidx/fragment/app/Fragment;IIZZLandroid/view/View;ZZ)V

    return-object v12

    .line 187
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final d(Z)Lcom/netflix/android/imageloader/api/GetImageRequest;
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcom/netflix/android/imageloader/api/GetImageRequest;->i:Z

    return-object p0
.end method
