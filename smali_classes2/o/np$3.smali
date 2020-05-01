.class Lo/np$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zX;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/np;->e(Ljava/lang/String;Lo/aie;)Lo/zX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic d:Lo/aie;

.field final synthetic e:Lo/np;


# direct methods
.method constructor <init>(Lo/np;Ljava/lang/String;Lo/aie;)V
    .locals 0

    .line 787
    iput-object p1, p0, Lo/np$3;->e:Lo/np;

    iput-object p2, p0, Lo/np$3;->b:Ljava/lang/String;

    iput-object p3, p0, Lo/np$3;->d:Lo/aie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public O_()Lo/aie;
    .locals 1

    .line 795
    iget-object v0, p0, Lo/np$3;->d:Lo/aie;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 790
    iget-object v0, p0, Lo/np$3;->b:Ljava/lang/String;

    return-object v0
.end method
