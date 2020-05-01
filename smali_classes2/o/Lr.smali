.class Lo/Lr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;


# instance fields
.field private final b:Lo/Lm;


# direct methods
.method public constructor <init>(Lo/Lm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Lr;->b:Lo/Lm;

    return-void
.end method


# virtual methods
.method public b(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V
    .locals 1

    iget-object v0, p0, Lo/Lr;->b:Lo/Lm;

    invoke-static {v0, p1}, Lo/Lm;->a(Lo/Lm;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V

    return-void
.end method
