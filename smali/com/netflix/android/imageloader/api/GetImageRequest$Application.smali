.class public final Lcom/netflix/android/imageloader/api/GetImageRequest$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/android/imageloader/api/GetImageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/netflix/android/imageloader/api/GetImageRequest$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/netflix/android/imageloader/api/GetImageRequest;
    .locals 3

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destinationView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/netflix/android/imageloader/api/GetImageRequest;

    sget-object v1, Lcom/netflix/android/imageloader/api/GetImageRequest$Reason;->d:Lcom/netflix/android/imageloader/api/GetImageRequest$Reason;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netflix/android/imageloader/api/GetImageRequest;-><init>(Lcom/netflix/android/imageloader/api/GetImageRequest$Reason;Lo/amc;)V

    .line 37
    invoke-static {v0, p2}, Lcom/netflix/android/imageloader/api/GetImageRequest;->d(Lcom/netflix/android/imageloader/api/GetImageRequest;Landroid/view/View;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p2

    .line 38
    invoke-static {p2, p1}, Lcom/netflix/android/imageloader/api/GetImageRequest;->b(Lcom/netflix/android/imageloader/api/GetImageRequest;Landroidx/fragment/app/Fragment;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p1

    const/4 p2, 0x1

    .line 39
    invoke-virtual {p1, p2}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(Z)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lo/Serializable;)Lcom/netflix/android/imageloader/api/GetImageRequest;
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/netflix/android/imageloader/api/GetImageRequest;

    sget-object v1, Lcom/netflix/android/imageloader/api/GetImageRequest$Reason;->c:Lcom/netflix/android/imageloader/api/GetImageRequest$Reason;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netflix/android/imageloader/api/GetImageRequest;-><init>(Lcom/netflix/android/imageloader/api/GetImageRequest$Reason;Lo/amc;)V

    invoke-static {v0, p1}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(Lcom/netflix/android/imageloader/api/GetImageRequest;Lo/Serializable;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p1

    return-object p1
.end method

.method public final c()Lcom/netflix/android/imageloader/api/GetImageRequest;
    .locals 3

    .line 71
    new-instance v0, Lcom/netflix/android/imageloader/api/GetImageRequest;

    sget-object v1, Lcom/netflix/android/imageloader/api/GetImageRequest$Reason;->e:Lcom/netflix/android/imageloader/api/GetImageRequest$Reason;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netflix/android/imageloader/api/GetImageRequest;-><init>(Lcom/netflix/android/imageloader/api/GetImageRequest$Reason;Lo/amc;)V

    return-object v0
.end method

.method public final d(Landroidx/fragment/app/Fragment;)Lcom/netflix/android/imageloader/api/GetImageRequest;
    .locals 3

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/netflix/android/imageloader/api/GetImageRequest;

    sget-object v1, Lcom/netflix/android/imageloader/api/GetImageRequest$Reason;->c:Lcom/netflix/android/imageloader/api/GetImageRequest$Reason;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netflix/android/imageloader/api/GetImageRequest;-><init>(Lcom/netflix/android/imageloader/api/GetImageRequest$Reason;Lo/amc;)V

    invoke-static {v0, p1}, Lcom/netflix/android/imageloader/api/GetImageRequest;->b(Lcom/netflix/android/imageloader/api/GetImageRequest;Landroidx/fragment/app/Fragment;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p1

    return-object p1
.end method

.method public final e(Landroid/view/View;)Lcom/netflix/android/imageloader/api/GetImageRequest;
    .locals 3

    const-string v0, "destinationView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Lcom/netflix/android/imageloader/api/GetImageRequest;

    sget-object v1, Lcom/netflix/android/imageloader/api/GetImageRequest$Reason;->d:Lcom/netflix/android/imageloader/api/GetImageRequest$Reason;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netflix/android/imageloader/api/GetImageRequest;-><init>(Lcom/netflix/android/imageloader/api/GetImageRequest$Reason;Lo/amc;)V

    .line 61
    invoke-static {v0, p1}, Lcom/netflix/android/imageloader/api/GetImageRequest;->d(Lcom/netflix/android/imageloader/api/GetImageRequest;Landroid/view/View;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "destinationView.context"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    const-class v1, Lo/Serializable;

    invoke-static {p1, v1}, Lo/TagTechnology;->d(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Serializable;

    .line 62
    invoke-static {v0, p1}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(Lcom/netflix/android/imageloader/api/GetImageRequest;Lo/Serializable;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p1

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p1, v0}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(Z)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p1

    return-object p1
.end method
