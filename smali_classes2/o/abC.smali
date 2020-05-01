.class Lo/abC;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field private final b:Lo/abu;


# direct methods
.method public constructor <init>(Lo/abu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/abC;->b:Lo/abu;

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lo/abC;->b:Lo/abu;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lo/abu;->d(Lo/abu;Ljava/lang/String;)V

    return-void
.end method
