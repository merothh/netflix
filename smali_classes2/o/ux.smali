.class Lo/ux;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lo/ul$ActionBar;

.field private final c:Ljava/lang/Long;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/ul$ActionBar;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ux;->a:Lo/ul$ActionBar;

    iput-object p2, p0, Lo/ux;->c:Ljava/lang/Long;

    iput-object p3, p0, Lo/ux;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lo/ux;->a:Lo/ul$ActionBar;

    iget-object v1, p0, Lo/ux;->c:Ljava/lang/Long;

    iget-object v2, p0, Lo/ux;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lo/ul$ActionBar;->b(Lo/ul$ActionBar;Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method
