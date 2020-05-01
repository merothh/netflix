.class public final Lo/TextClassifierImpl$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/TextClassifierImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# instance fields
.field private final a:Lo/TextClassifierImpl$ActionBar;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;

.field private final d:Lcom/netflix/mediaclient/android/app/Status;

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/app/Status;ILcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;Lo/TextClassifierImpl$ActionBar;Ljava/lang/String;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/TextClassifierImpl$Application;->d:Lcom/netflix/mediaclient/android/app/Status;

    iput p2, p0, Lo/TextClassifierImpl$Application;->e:I

    iput-object p3, p0, Lo/TextClassifierImpl$Application;->c:Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;

    iput-object p4, p0, Lo/TextClassifierImpl$Application;->a:Lo/TextClassifierImpl$ActionBar;

    iput-object p5, p0, Lo/TextClassifierImpl$Application;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 148
    iget v0, p0, Lo/TextClassifierImpl$Application;->e:I

    return v0
.end method

.method public final b()Lo/TextClassifierImpl$ActionBar;
    .locals 1

    .line 150
    iget-object v0, p0, Lo/TextClassifierImpl$Application;->a:Lo/TextClassifierImpl$ActionBar;

    return-object v0
.end method

.method public final c()Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    .line 147
    iget-object v0, p0, Lo/TextClassifierImpl$Application;->d:Lcom/netflix/mediaclient/android/app/Status;

    return-object v0
.end method

.method public final d()Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;
    .locals 1

    .line 149
    iget-object v0, p0, Lo/TextClassifierImpl$Application;->c:Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;

    return-object v0
.end method

.method public final e()Z
    .locals 2

    .line 157
    iget-object v0, p0, Lo/TextClassifierImpl$Application;->d:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/TextClassifierImpl$Application;->c:Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;

    if-eqz v0, :cond_0

    sget-object v0, Lo/TextClassifierImpl;->b:Lo/TextClassifierImpl$TaskDescription;

    iget-object v1, p0, Lo/TextClassifierImpl$Application;->c:Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;

    invoke-static {v0, v1}, Lo/TextClassifierImpl$TaskDescription;->b(Lo/TextClassifierImpl$TaskDescription;Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lo/TextClassifierImpl$Application;->b:Ljava/lang/String;

    return-object v0
.end method
