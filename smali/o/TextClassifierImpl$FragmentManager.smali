.class final Lo/TextClassifierImpl$FragmentManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/cb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TextClassifierImpl;->e(Lcom/netflix/android/moneyball/fields/ActionField;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/TextClassifierImpl$ActionBar;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Lo/TextClassifierImpl;


# direct methods
.method constructor <init>(Lo/TextClassifierImpl;Lo/TextClassifierImpl$ActionBar;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lo/TextClassifierImpl$FragmentManager;->e:Lo/TextClassifierImpl;

    iput-object p2, p0, Lo/TextClassifierImpl$FragmentManager;->c:Lo/TextClassifierImpl$ActionBar;

    iput-object p3, p0, Lo/TextClassifierImpl$FragmentManager;->d:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;Lcom/netflix/mediaclient/android/app/Status;I)V
    .locals 7

    const-string v0, "status"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lo/TextClassifierImpl$FragmentManager;->e:Lo/TextClassifierImpl;

    iget-object v2, p0, Lo/TextClassifierImpl$FragmentManager;->c:Lo/TextClassifierImpl$ActionBar;

    iget-object v6, p0, Lo/TextClassifierImpl$FragmentManager;->d:Ljava/util/List;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v1 .. v6}, Lo/TextClassifierImpl;->a(Lo/TextClassifierImpl;Lo/TextClassifierImpl$ActionBar;Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;Lcom/netflix/mediaclient/android/app/Status;ILjava/util/List;)V

    return-void
.end method
