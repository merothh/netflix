.class public Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$1;
.super Ljava/util/HashSet;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/mB;-><init>(Landroid/content/Context;Lo/cz;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/H;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Lo/ahn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/mB;


# direct methods
.method public constructor <init>(Lo/mB;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$1;->b:Lo/mB;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    sget-object p1, Lo/ahn;->b:Lo/ahn;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
