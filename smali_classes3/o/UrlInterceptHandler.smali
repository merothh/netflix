.class Lo/UrlInterceptHandler;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lo/UserPackage;


# direct methods
.method public constructor <init>(Lo/UserPackage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/UrlInterceptHandler;->b:Lo/UserPackage;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/UrlInterceptHandler;->b:Lo/UserPackage;

    invoke-static {v0}, Lo/UserPackage;->c(Lo/UserPackage;)V

    return-void
.end method
