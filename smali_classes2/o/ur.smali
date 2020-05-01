.class Lo/ur;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lo/ul$ActionBar;


# direct methods
.method public constructor <init>(Lo/ul$ActionBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ur;->d:Lo/ul$ActionBar;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/ur;->d:Lo/ul$ActionBar;

    invoke-static {v0}, Lo/ul;->b(Lo/ul$ActionBar;)V

    return-void
.end method
