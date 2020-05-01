.class final Lo/TextClassifierImpl$Fragment;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/cb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TextClassifierImpl;->d(Ljava/lang/String;[Lo/TextClassificationSessionFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/TextClassifierImpl$ActionBar;

.field final synthetic d:Lo/TextClassifierImpl;

.field final synthetic e:Ljava/util/List;


# direct methods
.method constructor <init>(Lo/TextClassifierImpl;Lo/TextClassifierImpl$ActionBar;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lo/TextClassifierImpl$Fragment;->d:Lo/TextClassifierImpl;

    iput-object p2, p0, Lo/TextClassifierImpl$Fragment;->b:Lo/TextClassifierImpl$ActionBar;

    iput-object p3, p0, Lo/TextClassifierImpl$Fragment;->e:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;Lcom/netflix/mediaclient/android/app/Status;I)V
    .locals 7

    const-string v0, "status"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lo/TextClassifierImpl$Fragment;->d:Lo/TextClassifierImpl;

    iget-object v2, p0, Lo/TextClassifierImpl$Fragment;->b:Lo/TextClassifierImpl$ActionBar;

    iget-object v6, p0, Lo/TextClassifierImpl$Fragment;->e:Ljava/util/List;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v1 .. v6}, Lo/TextClassifierImpl;->a(Lo/TextClassifierImpl;Lo/TextClassifierImpl$ActionBar;Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;Lcom/netflix/mediaclient/android/app/Status;ILjava/util/List;)V

    return-void
.end method
