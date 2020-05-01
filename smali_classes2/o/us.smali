.class Lo/us;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lo/ul$ActionBar;


# direct methods
.method public constructor <init>(Lo/ul$ActionBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/us;->e:Lo/ul$ActionBar;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/us;->e:Lo/ul$ActionBar;

    invoke-static {v0}, Lo/ul$ActionBar;->b(Lo/ul$ActionBar;)V

    return-void
.end method
