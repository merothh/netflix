.class public Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$4;
.super Ljava/util/HashSet;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/mB;->e(Ljava/lang/String;Lo/agU;Lo/ahc;Lo/aim;Lo/ahS;)Lo/agI;
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
.field final synthetic a:Lo/mB;


# direct methods
.method public constructor <init>(Lo/mB;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$4;->a:Lo/mB;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    sget-object p1, Lo/ahn;->a:Lo/ahn;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$4;->add(Ljava/lang/Object;)Z

    return-void
.end method
