.class public Lcom/netflix/mediaclient/service/msl/client/MslErrorException;
.super Ljava/lang/Exception;
.source ""


# instance fields
.field private a:Lo/ahF;


# direct methods
.method public constructor <init>(Lo/ahF;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/MslErrorException;->a:Lo/ahF;

    return-void
.end method


# virtual methods
.method public d()Lo/ahF;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/MslErrorException;->a:Lo/ahF;

    return-object v0
.end method
