.class public Lorg/apache/http/impl/io/IdentityOutputStream;
.super Ljava/io/OutputStream;


# instance fields
.field private closed:Z

.field private final out:Lorg/apache/http/io/SessionOutputBuffer;


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionOutputBuffer;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/io/IdentityOutputStream;->closed:Z

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/http/impl/io/IdentityOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Session output buffer may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/http/impl/io/IdentityOutputStream;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/io/IdentityOutputStream;->closed:Z

    iget-object v0, p0, Lorg/apache/http/impl/io/IdentityOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionOutputBuffer;->flush()V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/io/IdentityOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionOutputBuffer;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/http/impl/io/IdentityOutputStream;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/io/IdentityOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0, p1}, Lorg/apache/http/io/SessionOutputBuffer;->write(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Attempted write to closed stream."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/http/impl/io/IdentityOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/http/impl/io/IdentityOutputStream;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/io/IdentityOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/io/SessionOutputBuffer;->write([BII)V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempted write to closed stream."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
