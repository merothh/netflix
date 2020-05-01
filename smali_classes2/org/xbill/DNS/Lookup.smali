.class public final Lorg/xbill/DNS/Lookup;
.super Ljava/lang/Object;
.source "Lookup.java"


# static fields
.field public static final HOST_NOT_FOUND:I = 0x3

.field public static final SUCCESSFUL:I = 0x0

.field public static final TRY_AGAIN:I = 0x2

.field public static final TYPE_NOT_FOUND:I = 0x4

.field public static final UNRECOVERABLE:I = 0x1

.field private static defaultCaches:Ljava/util/Map;

.field private static defaultNdots:I

.field private static defaultResolver:Lorg/xbill/DNS/Resolver;

.field private static defaultSearchPath:[Lorg/xbill/DNS/Name;

.field private static final noAliases:[Lorg/xbill/DNS/Name;


# instance fields
.field private aliases:Ljava/util/List;

.field private answers:[Lorg/xbill/DNS/Record;

.field private badresponse:Z

.field private badresponse_error:Ljava/lang/String;

.field private cache:Lorg/xbill/DNS/Cache;

.field private credibility:I

.field private dclass:I

.field private done:Z

.field private doneCurrent:Z

.field private error:Ljava/lang/String;

.field private foundAlias:Z

.field private iterations:I

.field private name:Lorg/xbill/DNS/Name;

.field private nametoolong:Z

.field private networkerror:Z

.field private nxdomain:Z

.field private referral:Z

.field private resolver:Lorg/xbill/DNS/Resolver;

.field private result:I

.field private searchPath:[Lorg/xbill/DNS/Name;

.field private temporary_cache:Z

.field private timedout:Z

.field private type:I

.field private verbose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/xbill/DNS/Name;

    sput-object v0, Lorg/xbill/DNS/Lookup;->noAliases:[Lorg/xbill/DNS/Name;

    .line 97
    invoke-static {}, Lorg/xbill/DNS/Lookup;->refreshDefault()V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 310
    invoke-static {p1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;II)V

    .line 311
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 298
    invoke-static {p1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;II)V

    .line 299
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 284
    invoke-static {p1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;II)V

    .line 285
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 269
    invoke-direct {p0, p1, v0, v0}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;II)V

    .line 270
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;I)V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;II)V

    .line 259
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;II)V
    .locals 2

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    invoke-static {p2}, Lorg/xbill/DNS/Type;->check(I)V

    .line 231
    invoke-static {p3}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 232
    invoke-static {p2}, Lorg/xbill/DNS/Type;->isRR(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xff

    if-eq p2, v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot query for meta-types other than ANY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    iput-object p1, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    .line 236
    iput p2, p0, Lorg/xbill/DNS/Lookup;->type:I

    .line 237
    iput p3, p0, Lorg/xbill/DNS/Lookup;->dclass:I

    .line 238
    const-class v1, Lorg/xbill/DNS/Lookup;

    monitor-enter v1

    .line 239
    :try_start_0
    invoke-static {}, Lorg/xbill/DNS/Lookup;->getDefaultResolver()Lorg/xbill/DNS/Resolver;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->resolver:Lorg/xbill/DNS/Resolver;

    .line 240
    invoke-static {}, Lorg/xbill/DNS/Lookup;->getDefaultSearchPath()[Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->searchPath:[Lorg/xbill/DNS/Name;

    .line 241
    invoke-static {p3}, Lorg/xbill/DNS/Lookup;->getDefaultCache(I)Lorg/xbill/DNS/Cache;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    .line 242
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    const/4 v0, 0x3

    iput v0, p0, Lorg/xbill/DNS/Lookup;->credibility:I

    .line 244
    const-string/jumbo v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->verbose:Z

    .line 245
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 246
    return-void

    .line 242
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private checkDone()V
    .locals 3

    .prologue
    .line 589
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 590
    return-void

    .line 591
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Lookup of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 592
    iget v1, p0, Lorg/xbill/DNS/Lookup;->dclass:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/xbill/DNS/Lookup;->dclass:I

    invoke-static {v2}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 594
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/xbill/DNS/Lookup;->type:I

    invoke-static {v2}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " isn\'t done"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 595
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private follow(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 396
    iput-boolean v2, p0, Lorg/xbill/DNS/Lookup;->foundAlias:Z

    .line 397
    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->badresponse:Z

    .line 398
    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->networkerror:Z

    .line 399
    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->timedout:Z

    .line 400
    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->nxdomain:Z

    .line 401
    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->referral:Z

    .line 402
    iget v0, p0, Lorg/xbill/DNS/Lookup;->iterations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xbill/DNS/Lookup;->iterations:I

    .line 403
    iget v0, p0, Lorg/xbill/DNS/Lookup;->iterations:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    :cond_0
    iput v2, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 405
    const-string/jumbo v0, "CNAME loop"

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 406
    iput-boolean v2, p0, Lorg/xbill/DNS/Lookup;->done:Z

    .line 413
    :goto_0
    return-void

    .line 409
    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    if-nez v0, :cond_2

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    .line 411
    :cond_2
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Lookup;->lookup(Lorg/xbill/DNS/Name;)V

    goto :goto_0
.end method

.method public static declared-synchronized getDefaultCache(I)Lorg/xbill/DNS/Cache;
    .locals 4

    .prologue
    .line 126
    const-class v1, Lorg/xbill/DNS/Lookup;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 127
    sget-object v0, Lorg/xbill/DNS/Lookup;->defaultCaches:Ljava/util/Map;

    invoke-static {p0}, Lorg/xbill/DNS/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Cache;

    .line 128
    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lorg/xbill/DNS/Cache;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/Cache;-><init>(I)V

    .line 130
    sget-object v2, Lorg/xbill/DNS/Lookup;->defaultCaches:Ljava/util/Map;

    invoke-static {p0}, Lorg/xbill/DNS/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    monitor-exit v1

    return-object v0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getDefaultResolver()Lorg/xbill/DNS/Resolver;
    .locals 2

    .prologue
    .line 106
    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/xbill/DNS/Lookup;->defaultResolver:Lorg/xbill/DNS/Resolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getDefaultSearchPath()[Lorg/xbill/DNS/Name;
    .locals 2

    .prologue
    .line 153
    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/xbill/DNS/Lookup;->defaultSearchPath:[Lorg/xbill/DNS/Name;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private lookup(Lorg/xbill/DNS/Name;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 463
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    iget v1, p0, Lorg/xbill/DNS/Lookup;->type:I

    iget v2, p0, Lorg/xbill/DNS/Lookup;->credibility:I

    invoke-virtual {v0, p1, v1, v2}, Lorg/xbill/DNS/Cache;->lookupRecords(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;

    move-result-object v0

    .line 464
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->verbose:Z

    if-eqz v1, :cond_0

    .line 465
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "lookup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/xbill/DNS/Lookup;->type:I

    .line 466
    invoke-static {v3}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 465
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 467
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 469
    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/Lookup;->processResponse(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/SetResponse;)V

    .line 470
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->doneCurrent:Z

    if-eqz v0, :cond_2

    .line 512
    :cond_1
    :goto_0
    return-void

    .line 473
    :cond_2
    iget v0, p0, Lorg/xbill/DNS/Lookup;->type:I

    iget v1, p0, Lorg/xbill/DNS/Lookup;->dclass:I

    invoke-static {p1, v0, v1}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 474
    invoke-static {v0}, Lorg/xbill/DNS/Message;->newQuery(Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/Message;

    move-result-object v0

    .line 477
    :try_start_0
    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->resolver:Lorg/xbill/DNS/Resolver;

    invoke-interface {v1, v0}, Lorg/xbill/DNS/Resolver;->send(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 487
    invoke-virtual {v1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v2

    .line 488
    if-eqz v2, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    .line 491
    iput-boolean v4, p0, Lorg/xbill/DNS/Lookup;->badresponse:Z

    .line 492
    invoke-static {v2}, Lorg/xbill/DNS/Rcode;->string(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->badresponse_error:Ljava/lang/String;

    goto :goto_0

    .line 479
    :catch_0
    move-exception v0

    .line 481
    instance-of v0, v0, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_3

    .line 482
    iput-boolean v4, p0, Lorg/xbill/DNS/Lookup;->timedout:Z

    goto :goto_0

    .line 484
    :cond_3
    iput-boolean v4, p0, Lorg/xbill/DNS/Lookup;->networkerror:Z

    goto :goto_0

    .line 496
    :cond_4
    invoke-virtual {v0}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Record;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 498
    iput-boolean v4, p0, Lorg/xbill/DNS/Lookup;->badresponse:Z

    .line 499
    const-string/jumbo v0, "response does not match query"

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->badresponse_error:Ljava/lang/String;

    goto :goto_0

    .line 503
    :cond_5
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Cache;->addMessage(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/SetResponse;

    move-result-object v0

    .line 504
    if-nez v0, :cond_6

    .line 505
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    iget v1, p0, Lorg/xbill/DNS/Lookup;->type:I

    iget v2, p0, Lorg/xbill/DNS/Lookup;->credibility:I

    invoke-virtual {v0, p1, v1, v2}, Lorg/xbill/DNS/Cache;->lookupRecords(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;

    move-result-object v0

    .line 506
    :cond_6
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->verbose:Z

    if-eqz v1, :cond_7

    .line 507
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queried "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/xbill/DNS/Lookup;->type:I

    .line 508
    invoke-static {v3}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 507
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 509
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 511
    :cond_7
    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/Lookup;->processResponse(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/SetResponse;)V

    goto/16 :goto_0
.end method

.method private processResponse(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/SetResponse;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 417
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 418
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->answers()[Lorg/xbill/DNS/RRset;

    move-result-object v2

    .line 419
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 423
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 424
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v4

    .line 425
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 426
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 423
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 429
    :cond_1
    iput v1, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 430
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/xbill/DNS/Record;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xbill/DNS/Record;

    check-cast v0, [Lorg/xbill/DNS/Record;

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    .line 431
    iput-boolean v6, p0, Lorg/xbill/DNS/Lookup;->done:Z

    .line 459
    :cond_2
    :goto_2
    return-void

    .line 432
    :cond_3
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isNXDOMAIN()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 433
    iput-boolean v6, p0, Lorg/xbill/DNS/Lookup;->nxdomain:Z

    .line 434
    iput-boolean v6, p0, Lorg/xbill/DNS/Lookup;->doneCurrent:Z

    .line 435
    iget v0, p0, Lorg/xbill/DNS/Lookup;->iterations:I

    if-lez v0, :cond_2

    .line 436
    const/4 v0, 0x3

    iput v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 437
    iput-boolean v6, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_2

    .line 439
    :cond_4
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isNXRRSET()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 440
    const/4 v0, 0x4

    iput v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 441
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    .line 442
    iput-boolean v6, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_2

    .line 443
    :cond_5
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isCNAME()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 444
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->getCNAME()Lorg/xbill/DNS/CNAMERecord;

    move-result-object v0

    .line 445
    invoke-virtual {v0}, Lorg/xbill/DNS/CNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/xbill/DNS/Lookup;->follow(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    goto :goto_2

    .line 446
    :cond_6
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isDNAME()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 447
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->getDNAME()Lorg/xbill/DNS/DNAMERecord;

    move-result-object v0

    .line 449
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Name;->fromDNAME(Lorg/xbill/DNS/DNAMERecord;)Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/xbill/DNS/Lookup;->follow(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 450
    :catch_0
    move-exception v0

    .line 451
    iput v6, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 452
    const-string/jumbo v0, "Invalid DNAME target"

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 453
    iput-boolean v6, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_2

    .line 455
    :cond_7
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isDelegation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    iput-boolean v6, p0, Lorg/xbill/DNS/Lookup;->referral:Z

    goto :goto_2
.end method

.method public static declared-synchronized refreshDefault()V
    .locals 3

    .prologue
    .line 86
    const-class v1, Lorg/xbill/DNS/Lookup;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lorg/xbill/DNS/ExtendedResolver;

    invoke-direct {v0}, Lorg/xbill/DNS/ExtendedResolver;-><init>()V

    sput-object v0, Lorg/xbill/DNS/Lookup;->defaultResolver:Lorg/xbill/DNS/Resolver;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :try_start_1
    invoke-static {}, Lorg/xbill/DNS/ResolverConfig;->getCurrentConfig()Lorg/xbill/DNS/ResolverConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/ResolverConfig;->searchPath()[Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/Lookup;->defaultSearchPath:[Lorg/xbill/DNS/Name;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/xbill/DNS/Lookup;->defaultCaches:Ljava/util/Map;

    .line 93
    invoke-static {}, Lorg/xbill/DNS/ResolverConfig;->getCurrentConfig()Lorg/xbill/DNS/ResolverConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/ResolverConfig;->ndots()I

    move-result v0

    sput v0, Lorg/xbill/DNS/Lookup;->defaultNdots:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    monitor-exit v1

    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Failed to initialize resolver"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private final reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 194
    iput v1, p0, Lorg/xbill/DNS/Lookup;->iterations:I

    .line 195
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->foundAlias:Z

    .line 196
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->done:Z

    .line 197
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->doneCurrent:Z

    .line 198
    iput-object v2, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    .line 199
    iput-object v2, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    .line 200
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 201
    iput-object v2, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 202
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->nxdomain:Z

    .line 203
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->badresponse:Z

    .line 204
    iput-object v2, p0, Lorg/xbill/DNS/Lookup;->badresponse_error:Ljava/lang/String;

    .line 205
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->networkerror:Z

    .line 206
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->timedout:Z

    .line 207
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->nametoolong:Z

    .line 208
    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->referral:Z

    .line 209
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->temporary_cache:Z

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    invoke-virtual {v0}, Lorg/xbill/DNS/Cache;->clearCache()V

    .line 211
    :cond_0
    return-void
.end method

.method private resolve(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->doneCurrent:Z

    .line 518
    if-nez p2, :cond_0

    .line 529
    :goto_0
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Lookup;->lookup(Lorg/xbill/DNS/Name;)V

    .line 530
    :goto_1
    return-void

    .line 522
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lorg/xbill/DNS/Name;->concatenate(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 524
    :catch_0
    move-exception v0

    .line 525
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->nametoolong:Z

    goto :goto_1
.end method

.method public static declared-synchronized setDefaultCache(Lorg/xbill/DNS/Cache;I)V
    .locals 3

    .prologue
    .line 143
    const-class v1, Lorg/xbill/DNS/Lookup;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 144
    sget-object v0, Lorg/xbill/DNS/Lookup;->defaultCaches:Ljava/util/Map;

    invoke-static {p1}, Lorg/xbill/DNS/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit v1

    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setDefaultResolver(Lorg/xbill/DNS/Resolver;)V
    .locals 2

    .prologue
    .line 115
    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lorg/xbill/DNS/Lookup;->defaultResolver:Lorg/xbill/DNS/Resolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit v0

    return-void

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setDefaultSearchPath([Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 172
    const-class v1, Lorg/xbill/DNS/Lookup;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 173
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lorg/xbill/DNS/Lookup;->defaultSearchPath:[Lorg/xbill/DNS/Name;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :goto_0
    monitor-exit v1

    return-void

    .line 176
    :cond_0
    :try_start_1
    array-length v0, p0

    new-array v2, v0, [Lorg/xbill/DNS/Name;

    .line 177
    const/4 v0, 0x0

    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 178
    aget-object v3, p0, v0

    sget-object v4, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {v3, v4}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v3

    aput-object v3, v2, v0

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 179
    :cond_1
    sput-object v2, Lorg/xbill/DNS/Lookup;->defaultSearchPath:[Lorg/xbill/DNS/Name;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setDefaultSearchPath([Lorg/xbill/DNS/Name;)V
    .locals 2

    .prologue
    .line 162
    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lorg/xbill/DNS/Lookup;->defaultSearchPath:[Lorg/xbill/DNS/Name;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit v0

    return-void

    .line 162
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setPacketLogger(Lorg/xbill/DNS/PacketLogger;)V
    .locals 2

    .prologue
    .line 189
    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/xbill/DNS/Client;->setPacketLogger(Lorg/xbill/DNS/PacketLogger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit v0

    return-void

    .line 189
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getAliases()[Lorg/xbill/DNS/Name;
    .locals 2

    .prologue
    .line 618
    invoke-direct {p0}, Lorg/xbill/DNS/Lookup;->checkDone()V

    .line 619
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    if-nez v0, :cond_0

    .line 620
    sget-object v0, Lorg/xbill/DNS/Lookup;->noAliases:[Lorg/xbill/DNS/Name;

    .line 621
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/xbill/DNS/Name;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xbill/DNS/Name;

    check-cast v0, [Lorg/xbill/DNS/Name;

    goto :goto_0
.end method

.method public getAnswers()[Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 605
    invoke-direct {p0}, Lorg/xbill/DNS/Lookup;->checkDone()V

    .line 606
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    return-object v0
.end method

.method public getErrorString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 644
    invoke-direct {p0}, Lorg/xbill/DNS/Lookup;->checkDone()V

    .line 645
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 652
    :goto_0
    return-object v0

    .line 647
    :cond_0
    iget v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    packed-switch v0, :pswitch_data_0

    .line 654
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unknown result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :pswitch_0
    const-string/jumbo v0, "successful"

    goto :goto_0

    .line 649
    :pswitch_1
    const-string/jumbo v0, "unrecoverable error"

    goto :goto_0

    .line 650
    :pswitch_2
    const-string/jumbo v0, "try again"

    goto :goto_0

    .line 651
    :pswitch_3
    const-string/jumbo v0, "host not found"

    goto :goto_0

    .line 652
    :pswitch_4
    const-string/jumbo v0, "type not found"

    goto :goto_0

    .line 647
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 632
    invoke-direct {p0}, Lorg/xbill/DNS/Lookup;->checkDone()V

    .line 633
    iget v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    return v0
.end method

.method public run()[Lorg/xbill/DNS/Record;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 538
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-eqz v0, :cond_0

    .line 539
    invoke-direct {p0}, Lorg/xbill/DNS/Lookup;->reset()V

    .line 540
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 541
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Lookup;->resolve(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 558
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-nez v0, :cond_2

    .line 559
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->badresponse:Z

    if-eqz v0, :cond_8

    .line 560
    iput v4, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 561
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->badresponse_error:Ljava/lang/String;

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 562
    iput-boolean v3, p0, Lorg/xbill/DNS/Lookup;->done:Z

    .line 584
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    :goto_2
    return-object v0

    .line 542
    :cond_3
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->searchPath:[Lorg/xbill/DNS/Name;

    if-nez v0, :cond_4

    .line 543
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Lookup;->resolve(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    goto :goto_0

    .line 545
    :cond_4
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    sget v1, Lorg/xbill/DNS/Lookup;->defaultNdots:I

    if-le v0, v1, :cond_5

    .line 546
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Lookup;->resolve(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 547
    :cond_5
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-eqz v0, :cond_6

    .line 548
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    goto :goto_2

    .line 550
    :cond_6
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->searchPath:[Lorg/xbill/DNS/Name;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 551
    iget-object v1, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    iget-object v2, p0, Lorg/xbill/DNS/Lookup;->searchPath:[Lorg/xbill/DNS/Name;

    aget-object v2, v2, v0

    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/Lookup;->resolve(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 552
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-eqz v1, :cond_7

    .line 553
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    goto :goto_2

    .line 554
    :cond_7
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->foundAlias:Z

    if-nez v1, :cond_1

    .line 550
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 563
    :cond_8
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->timedout:Z

    if-eqz v0, :cond_9

    .line 564
    iput v4, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 565
    const-string/jumbo v0, "timed out"

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 566
    iput-boolean v3, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_1

    .line 567
    :cond_9
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->networkerror:Z

    if-eqz v0, :cond_a

    .line 568
    iput v4, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 569
    const-string/jumbo v0, "network error"

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 570
    iput-boolean v3, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_1

    .line 571
    :cond_a
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->nxdomain:Z

    if-eqz v0, :cond_b

    .line 572
    const/4 v0, 0x3

    iput v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 573
    iput-boolean v3, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_1

    .line 574
    :cond_b
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->referral:Z

    if-eqz v0, :cond_c

    .line 575
    iput v3, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 576
    const-string/jumbo v0, "referral"

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 577
    iput-boolean v3, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_1

    .line 578
    :cond_c
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->nametoolong:Z

    if-eqz v0, :cond_2

    .line 579
    iput v3, p0, Lorg/xbill/DNS/Lookup;->result:I

    .line 580
    const-string/jumbo v0, "name too long"

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    .line 581
    iput-boolean v3, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto/16 :goto_1
.end method

.method public setCache(Lorg/xbill/DNS/Cache;)V
    .locals 2

    .prologue
    .line 359
    if-nez p1, :cond_0

    .line 360
    new-instance v0, Lorg/xbill/DNS/Cache;

    iget v1, p0, Lorg/xbill/DNS/Lookup;->dclass:I

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Cache;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->temporary_cache:Z

    .line 366
    :goto_0
    return-void

    .line 363
    :cond_0
    iput-object p1, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->temporary_cache:Z

    goto :goto_0
.end method

.method public setCredibility(I)V
    .locals 0

    .prologue
    .line 391
    iput p1, p0, Lorg/xbill/DNS/Lookup;->credibility:I

    .line 392
    return-void
.end method

.method public setNdots(I)V
    .locals 3

    .prologue
    .line 378
    if-gez p1, :cond_0

    .line 379
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal ndots value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_0
    sput p1, Lorg/xbill/DNS/Lookup;->defaultNdots:I

    .line 382
    return-void
.end method

.method public setResolver(Lorg/xbill/DNS/Resolver;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lorg/xbill/DNS/Lookup;->resolver:Lorg/xbill/DNS/Resolver;

    .line 321
    return-void
.end method

.method public setSearchPath([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 341
    if-nez p1, :cond_0

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->searchPath:[Lorg/xbill/DNS/Name;

    .line 349
    :goto_0
    return-void

    .line 345
    :cond_0
    array-length v0, p1

    new-array v1, v0, [Lorg/xbill/DNS/Name;

    .line 346
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 347
    aget-object v2, p1, v0

    sget-object v3, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {v2, v3}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v2

    aput-object v2, v1, v0

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 348
    :cond_1
    iput-object v1, p0, Lorg/xbill/DNS/Lookup;->searchPath:[Lorg/xbill/DNS/Name;

    goto :goto_0
.end method

.method public setSearchPath([Lorg/xbill/DNS/Name;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lorg/xbill/DNS/Lookup;->searchPath:[Lorg/xbill/DNS/Name;

    .line 331
    return-void
.end method
