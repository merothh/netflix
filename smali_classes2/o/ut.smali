.class Lo/ut;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final c:Ljava/lang/Long;

.field private final d:Lo/ul$ActionBar;


# direct methods
.method public constructor <init>(Lo/ul$ActionBar;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ut;->d:Lo/ul$ActionBar;

    iput-object p2, p0, Lo/ut;->c:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/ut;->d:Lo/ul$ActionBar;

    iget-object v1, p0, Lo/ut;->c:Ljava/lang/Long;

    invoke-static {v0, v1}, Lo/ul$ActionBar;->c(Lo/ul$ActionBar;Ljava/lang/Long;)V

    return-void
.end method
