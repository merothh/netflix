.class Lo/Ln;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IPlayer$TaskDescription;


# instance fields
.field private final b:Lo/Lm;


# direct methods
.method public constructor <init>(Lo/Lm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Ln;->b:Lo/Lm;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    iget-object v0, p0, Lo/Ln;->b:Lo/Lm;

    invoke-static {v0, p1, p2}, Lo/Lm;->d(Lo/Lm;J)V

    return-void
.end method
